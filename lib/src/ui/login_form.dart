import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/login/login_bloc.dart';
import 'package:my_personal_avaliator/src/models/avaliador.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _userNameController = TextEditingController();
  final _passWordController = TextEditingController();

  _onLoginButtonPressed() {
    var usr = new Usuario<Avaliador>(
        userName: _userNameController.text,
        passWord: _passWordController.text,
        userType: 1);
    BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(usuario: usr));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('${state.error}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Container(
                    height: 130,
                    width: 130,
                    child: Opacity(
                      opacity: 0.6,
                      child: Image(
                        image: AssetImage("images/login_main.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Meu Avaliador Preferido",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30.0,
                      color: Color(0xFF4D8B35),
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 50.0),
                TextField(
                  controller: _userNameController,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      hintText: "email",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: Icon(
                        Icons.person,
                      )),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  controller: _passWordController,
                  obscureText: true,
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      hintText: "senha",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: Icon(
                        Icons.lock,
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FlatButton(
                  color: Colors.green[300],
                  onPressed:
                      state is! LoginInProgress ? _onLoginButtonPressed : null,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Não é cadastrado?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      //IMPLEMENTAR CADASTRE AQUI
                      onTap: () {},
                      child: Text(
                        "Cadastre aqui!",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
