// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:my_personal_avaliator/application/auth/sign_in/sign_in_bloc.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/infrastructure/auth/user_auth_facade.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<SignInBloc>(() => SignInBloc(g<IAuthFacate>()));
  g.registerLazySingleton<UserAuthFacade>(() => UserAuthFacade(g<UserRepo>()));
}
