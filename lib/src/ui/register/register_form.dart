import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:my_personal_avaliator/src/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/navigation_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/register/register_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/register/register_state.dart';
import 'package:my_personal_avaliator/src/models/repos/user_repo.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';
import 'package:my_personal_avaliator/src/ui/widgets/app_icon_button.dart';
import 'package:my_personal_avaliator/src/ui/widgets/error_msg.dart';
import 'package:my_personal_avaliator/src/utils/regex_utils.dart';

part 'first_form_step.dart';
part 'second_form_step.dart';

class RegisterForm extends StatefulWidget {
  static const id = "/register";
  final UserRepo userRepo;
  const RegisterForm({Key key, this.userRepo}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  RegisterBloc _bloc;
  CarouselController _carouselController = CarouselController();
  int _currentFormIndex = 1;
  bool _isBackButtonVisible = false;
  RegisterState _checkBoxState;

  final _userNameController = TextEditingController();
  final _passWordController = TextEditingController();
  final _nomeController = TextEditingController();
  final _empresaController = TextEditingController();
  final _siteController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  _saveUser() async {
    if (_checkBoxState is RegisterIsNotChecked && _currentFormIndex == 2) {
      await _showMyDialog();
      return;
    }

    if (_formKey.currentState.validate()) {
      if (_currentFormIndex == 1) {
        _carouselController.jumpToPage(1);
        return;
      }

      if ((_nomeController.text.isEmpty || _passWordController.text.isEmpty) &&
          _currentFormIndex == 2) {
        _carouselController.jumpToPage(0);
        return;
      }
      var u = new Usuario(
          userName: _userNameController.text,
          passWord: _passWordController.text,
          userType: 1,
          userInfo: {
            "nome": _nomeController.text,
            "empresa": _empresaController.text,
            "site": _siteController.text,
            "email": _userNameController.text,
            "telefone": _telefoneController.text
          });

      _bloc.registerController.add(u);
    }
  }

  Widget _buildAppIconButtom(RegisterState state) {
    if (state is RegisterInitial) {
      return AppIconButtom(
          icon: _currentFormIndex == 1 ? Icons.skip_next : null,
          label: _currentFormIndex == 1 ? "Próximo" : "Salvar",
          onIconButtonPressed: _saveUser);
    }
    if (state is RegisterInProgress) {
      return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      );
    }

    if (state is RegisterError) {
      return ErrorMsg(
        error: state.error,
      );
    }

    return SizedBox();
  }

  @override
  void initState() {
    super.initState();
    _bloc = RegisterBloc(
        userRepo: widget.userRepo,
        authBloc: BlocProvider.of<AuthBloc>(context),
        navigatorBloc: BlocProvider.of<NavigatorBloc>(context));
  }

  @override
  void dispose() {
    _bloc.dispose();
    _userNameController.dispose();
    _passWordController.dispose();
    _nomeController.dispose();
    _empresaController.dispose();
    _siteController.dispose();
    _telefoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  //HEADER
                  Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Visibility(
                              replacement: SizedBox(
                                height: null,
                                width: 70,
                              ),
                              visible: _isBackButtonVisible,
                              child: IconButton(
                                padding: EdgeInsets.all(0.0),
                                onPressed: () {
                                  _carouselController.jumpToPage(0);
                                },
                                icon: Icon(Icons.arrow_back),
                                iconSize: 35,
                                color: Colors.black54,
                              ),
                            ),
                            Flexible(
                              child: Icon(
                                Icons.assignment,
                                size: 75,
                                color: Colors.green[200],
                              ),
                            ),
                            SizedBox(
                              height: null,
                              width: 60,
                            ),
                          ]),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          _currentFormIndex == 1
                              ? "Suas informações de login"
                              : "Agora seus dados para terminar :)",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black54,
                            fontFamily: "SourceSansPro",
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

//---------------------------------------------------------------// MAIN FORM
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 20.0),
                    child: CarouselSlider(
                      carouselController: _carouselController,
                      items: <Widget>[
                        FirstFormStep(
                            userC: _userNameController,
                            passC: _passWordController),
                        SecondFormStep(
                          nomeC: _nomeController,
                          empresaC: _empresaController,
                          siteC: _siteController,
                          telefoneC: _telefoneController,
                        ),
                      ],
                      options: CarouselOptions(
                        onPageChanged: (value, reason) {
                          setState(() {
                            _currentFormIndex = value + 1;
                            _isBackButtonVisible =
                                _currentFormIndex == 1 ? false : true;
                          });
                        },
                        height: 300,
                        viewportFraction: 1,
                        initialPage: 0,
                        reverse: false,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  StreamBuilder<RegisterState>(
                      stream: _bloc.outRegisterState,
                      initialData: RegisterInitial(),
                      builder: (BuildContext context,
                          AsyncSnapshot<RegisterState> snapshot) {
                        final state = snapshot.data;
                        return _buildAppIconButtom(state);
                      }),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          StreamBuilder<RegisterState>(
                              stream: _bloc.outTermState,
                              initialData: RegisterInitial(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<RegisterState> snapshot) {
                                final state = snapshot.data;
                                _checkBoxState = state;
                                return Checkbox(
                                    value: state is RegisterIsChecked
                                        ? true
                                        : false,
                                    onChanged: (newValue) {
                                      _bloc.termController.add(newValue);
                                    });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            child: Text.rich(
                              TextSpan(
                                text: "Você aceita os termos da",
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\npolitica de privacidade.',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline,
                                      )),
                                  //
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "$_currentFormIndex / 2",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            fontFamily: "Pacifico"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Atenção',
            style: TextStyle(color: Colors.green),
          ),
          content: SingleChildScrollView(
              child: Text(
                  "Por favor leia e aceite os termos de política de privacidade para conntinuar")),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
