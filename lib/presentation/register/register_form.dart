import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:my_personal_avaliator/app_constants.dart';

import 'package:my_personal_avaliator/application/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/application/blocs/register/register_bloc.dart';
import 'package:my_personal_avaliator/application/blocs/register/register_state.dart';
import 'package:my_personal_avaliator/application/core/funcs_utils.dart';
import 'package:my_personal_avaliator/application/core/navigation_bloc.dart';
import 'package:my_personal_avaliator/domain/core/regex_utils.dart';
import 'package:my_personal_avaliator/infrastructure/models/freezed_classes.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';
import 'package:my_personal_avaliator/presentation/core/widgets/app_icon_button.dart';
import 'package:my_personal_avaliator/presentation/core/widgets/error_container.dart';

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

  void _saveUser() async {
    if (_checkBoxState is RegisterIsNotChecked && _currentFormIndex == 2) {
      await showAppDialog(
          context: context,
          title: "Antes de continuar ;)",
          child: Text(
              "Por favor, leia e aceite o nossos termos de política de privacidade."),
          onActionPressed: () {
            Navigator.of(context).pop();
          });
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
    if (state is RegisterInitial || state is RegisterError) {
      return AppIconButtom(
          icon: _currentFormIndex == 1 ? Icons.skip_next : null,
          label: _currentFormIndex == 1 ? "Próximo" : "Salvar",
          onIconButtonPressed: state is RegisterInitial ? _saveUser : null);
    }
    if (state is RegisterInProgress) {
      return CircularProgressIndicator();
    }
    return Container();
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
//---------------------------------------------------------------//HEADER
                StreamBuilder<RegisterState>(
                  stream: _bloc.outRegisterState,
                  initialData: RegisterInitial(),
                  builder: (BuildContext context,
                      AsyncSnapshot<RegisterState> snapshot) {
                    return ErrorContainer(state: snapshot.data);
                  },
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
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
                            fontSize: 18,
                            color: Colors.black54,
                            fontFamily: "SourceSansPro",
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

//---------------------------------------------------------------// MAIN FORM
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
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

                    return Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: _buildAppIconButtom(state));
                  },
                ),
//---------------------------------------------------------------//FOOTER
                SizedBox(height: 60),
                Container(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
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
                            onTap: () {
                              showAppDialog(
                                  onActionPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  context: context,
                                  child: Container(
                                    height: 350,
                                    width: 400,
                                    child: Markdown(
                                      selectable: true,
                                      data: privacy_policy,
                                    ),
                                  ),
                                  title: "Política de Privacidade");
                            },
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//Text("Por favor, leia e aceite o nossos termos de política de privacidade.")
}
