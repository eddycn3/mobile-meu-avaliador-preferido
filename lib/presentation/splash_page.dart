import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/application/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/presentation/home_page.dart';
import 'package:my_personal_avaliator/presentation/sign_in/login_page.dart';

class SplashPage extends StatelessWidget {
  static const id = "/";
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) => {},
            authSucess: (_) async {
              await Navigator.of(context).pushNamed(HomePage.id);
            },
            authFailure: (_) async {
              await Navigator.of(context).pushNamed(LoginPage.id);
            },
            authRegisterSucess: (_) => {},
            authInProgress: (_) => {});
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Opacity(opacity: 0.5, child: Image.asset("images/login_main.png")),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Medindo Extremidades... ;)",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Container(
              alignment: Alignment.center,
              height: 30.0,
              width: 30.0,
              child: const CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
