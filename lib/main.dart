import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_personal_avaliator/app.dart';
import 'package:my_personal_avaliator/application/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/application/core/app_bloc_delegate.dart';
import 'package:my_personal_avaliator/application/core/navigation_bloc.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();
  final userRepository = UserRepo();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) {
          return AuthBloc(userRepo: userRepository)
            ..add(
              AuthStarted(),
            );
        }),
        BlocProvider<NavigatorBloc>(create: (context) {
          return NavigatorBloc(navigatorKey: _navigatorKey);
        }),
      ],
      child: App(
        userRepo: userRepository,
        navigatorKey: _navigatorKey,
      ),
    ),
  );
}
