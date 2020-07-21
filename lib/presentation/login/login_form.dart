import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/application/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/application/auth/sign_in/sign_in_bloc.dart';
import 'package:my_personal_avaliator/presentation/home_page.dart';
import 'package:my_personal_avaliator/presentation/register/register_form.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(listener: (context, state) {
      state.authFailOrSucessOption.fold(() {}, (either) {
        either.fold((failure) {
          FlushbarHelper.createError(
            message: failure.map(
                serverError: (_) => "desculpe. ocorreu um erro.",
                cpfAlredyInUse: (_) => "",
                idConfefAlredyInUse: (_) => "",
                emailAlredyInUse: (_) => "",
                invalidEmailAndPasswordCombination: (_) =>
                    "usuario ou senha inválidos ;("),
          ).show(context);
        }, (_) async {
          await Navigator.of(context).pushReplacementNamed(HomePage.id);
          context.bloc<AuthBloc>().add(const AuthEvent.authCheckStarted());
        });
      });
    }, builder: (context, state) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
          child: Form(
            autovalidate: state.showErrorMessages,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Container(
                    height: 130,
                    width: 130,
                    child: const Opacity(
                      opacity: 0.6,
                      child: Image(
                        image: AssetImage("images/login_main.png"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Meu Avaliador Preferido",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 30.0,
                      color: const Color(0xFF4D8B35),
                      fontWeight: FontWeight.w800),
                ),
                const Flexible(child: SizedBox(height: 50.0)),

                //USER AND PASS FIELDS
                TextFormField(
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<SignInBloc>()
                      .add(SignInEvent.emailChanged(value)),
                  validator: (_) =>
                      context.bloc<SignInBloc>().state.emailAddress.value.fold(
                            (l) => l.maybeMap(
                                emptyEmail: (_) => "entre com o email",
                                orElse: () => null),
                            (_) => null,
                          ),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      hintText: "email",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: Icon(
                        Icons.person,
                      )),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<SignInBloc>()
                      .add(SignInEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.bloc<SignInBloc>().state.password.value.fold(
                            (l) => l.maybeMap(
                                emptyPassword: (_) => "entre com a senha",
                                orElse: () => null),
                            (_) => null,
                          ),
                  obscureText: true,
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      hintText: "senha",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: Icon(
                        Icons.lock,
                      )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FlatButton(
                    color: Colors.green[300],
                    onPressed: () => context.bloc<SignInBloc>().add(
                        const SignInEvent.signInWithEmailAndPasswordPressed()),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0),
                    )),
                const SizedBox(
                  height: 16.0,
                ),
                if (state.isSubmitting) ...[
                  const LinearProgressIndicator(),
                  const SizedBox(height: 8),
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Não é cadastrado?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      //IMPLEMENTAR CADASTRE AQUI
                      onTap: () async {
                        await Navigator.of(context).pushNamed(RegisterForm.id);
                      },
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
        ),
      );
    });
  }
}
