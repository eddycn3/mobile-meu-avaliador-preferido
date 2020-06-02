import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/src/blocs/app_bloc_delegate.dart';
import 'package:my_personal_avaliator/src/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/src/models/repos/user_repo.dart';
import 'src/app.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  final userRepository = UserRepo();
  runApp(
    BlocProvider<AuthBloc>(
      create: (context) {
        return AuthBloc(userRepo: userRepository)
          ..add(
            AuthStarted(),
          );
      },
      child: App(userRepo: userRepository),
    ),
  );
}
