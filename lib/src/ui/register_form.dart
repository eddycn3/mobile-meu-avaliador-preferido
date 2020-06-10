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
import 'package:my_personal_avaliator/src/utils/regex_utils.dart';

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
  int currentFormIndex = 1;
  bool isBackButtonVisible = false;
  final _userNameController = TextEditingController();
  final _passWordController = TextEditingController();
  final _nomeController = TextEditingController();
  final _empresaController = TextEditingController();
  final _siteController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  _saveUser() {
    if (_formKey.currentState.validate()) {
      if (currentFormIndex == 1) {
        _carouselController.jumpToPage(1);
        return;
      }

      if ((_nomeController.text.isEmpty || _passWordController.text.isEmpty) &&
          currentFormIndex == 2) {
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
          icon: currentFormIndex == 1 ? Icons.skip_next : null,
          label: currentFormIndex == 1 ? "Próximo" : "Salvar",
          onIconButtonPressed: _saveUser);
    } else if (state is RegisterInProgress) {
      return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
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
    return StreamBuilder<RegisterState>(
      stream: _bloc.outState,
      initialData: RegisterInitial(),
      builder: (BuildContext context, AsyncSnapshot<RegisterState> snapshot) {
        final state = snapshot.data;

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
                                  visible: isBackButtonVisible,
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
                                    size: 70,
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
                              currentFormIndex == 1
                                  ? "Escolha um email e uma senha"
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

                      //--------MAIN FORM--------
                      SizedBox(height: 40),
                      CarouselSlider(
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
                              currentFormIndex = value + 1;
                              isBackButtonVisible =
                                  currentFormIndex == 1 ? false : true;
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

                      _buildAppIconButtom(state),

                      SizedBox(height: 60),
                      Text(
                        "$currentFormIndex / 2",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            fontFamily: "Pacifico"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class FirstFormStep extends StatelessWidget {
  final TextEditingController userC, passC;
  FirstFormStep({
    Key key,
    this.userC,
    this.passC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          TextFormField(
            controller: userC,
            validator: (value) {
              if (value.isEmpty) {
                return "entre com um e-mail";
              }
              if (!RegexUtils.isEmail(value.trim())) {
                return "entre com um e-mail válido";
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "E-MAIL",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: passC,
            validator: (value) {
              if (value.isEmpty) {
                return "entre com uma senha";
              }
              return null;
            },
            obscureText: true,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "SENHA",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondFormStep extends StatelessWidget {
  final TextEditingController nomeC, empresaC, siteC, telefoneC;
  SecondFormStep({
    Key key,
    this.nomeC,
    this.empresaC,
    this.siteC,
    this.telefoneC,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextFormField(
            controller: nomeC,
            validator: (value) {
              if (value.isEmpty) {
                return "entre com seu nome";
              }
              return null;
            },
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "NOME COMPLETO",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          TextFormField(
            controller: empresaC,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "EMPRESA",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          TextFormField(
            controller: siteC,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "SITE",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          TextFormField(
            controller: telefoneC,
            validator: (value) {
              if (value.isEmpty) {
                return "entre com o telefone";
              }
              return null;
            },
            keyboardType: TextInputType.phone,
            cursorColor: Colors.green,
            decoration: InputDecoration(
              hintText: "TELEFONE",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
