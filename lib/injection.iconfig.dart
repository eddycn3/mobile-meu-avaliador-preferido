// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:my_personal_avaliator/infrastructure/auth/user_auth_repo.dart';
import 'package:my_personal_avaliator/infrastructure/auth/user_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/application/auth/register/register_bloc.dart';
import 'package:my_personal_avaliator/application/auth/sign_in/sign_in_bloc.dart';
import 'package:my_personal_avaliator/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<UserAuthRepo>(() => UserAuthRepo());
  g.registerLazySingleton<IAuthFacade>(() => UserAuthFacade(g<UserAuthRepo>()));
  g.registerFactory<RegisterBloc>(() => RegisterBloc(g<IAuthFacade>()));
  g.registerFactory<SignInBloc>(() => SignInBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
}
