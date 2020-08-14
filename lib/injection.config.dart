// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'domain/auth/i_auth_facade.dart';
import 'application/auth/register/register_bloc.dart';
import 'application/auth/sign_in/sign_in_bloc.dart';
import 'infrastructure/auth/user_auth_facade.dart';
import 'infrastructure/auth/user_auth_repo.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<UserAuthRepo>(() => UserAuthRepo());
  gh.lazySingleton<IAuthFacade>(() => UserAuthFacade(get<UserAuthRepo>()));
  gh.factory<RegisterBloc>(() => RegisterBloc(get<IAuthFacade>()));
  gh.factory<SignInBloc>(() => SignInBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}
