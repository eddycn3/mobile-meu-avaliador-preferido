// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:my_personal_avaliator/infrastructure/local_repositorys/user_repo.dart';
import 'package:my_personal_avaliator/infrastructure/auth/user_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/application/auth/sign_in/sign_in_bloc.dart';
import 'package:my_personal_avaliator/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<UserRepo>(() => UserRepo());
  g.registerLazySingleton<IAuthFacade>(() => UserAuthFacade(g<UserRepo>()));
  g.registerFactory<SignInBloc>(() => SignInBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
}
