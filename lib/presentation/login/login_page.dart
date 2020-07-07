import "package:flutter/material.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/application/auth/sign_in/sign_in_bloc.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';
import 'package:my_personal_avaliator/injection.dart';
import 'package:my_personal_avaliator/presentation/login/login_form.dart';

class LoginPage extends StatelessWidget {
  static const id = "/login";
  final UserRepo userRepo;

  const LoginPage({Key key, @required this.userRepo})
      : assert(userRepo != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0XFFD9E7E2),
      body: BlocProvider(
        create: (context) => getIt<SignInBloc>(),
        child: LoginForm(),
      ),
    );
  }
}
