import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';
import 'package:my_personal_avaliator/presentation/login/login_form.dart';

class LoginPage extends StatelessWidget {
  static const id = "/login";
  final UserRepo userRepo;

  LoginPage({Key key, @required this.userRepo})
      : assert(userRepo != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0XFFD9E7E2),
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            authBloc: BlocProvider.of<AuthBloc>(context),
            userRepo: userRepo,
          );
        },
        child: LoginForm(),
      ),
    );
  }
}
