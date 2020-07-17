import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/user_auth.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';
import 'package:my_personal_avaliator/infrastructure/auth/user_auth_dtos.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_error.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_routes.dart';
import 'package:my_personal_avaliator/infrastructure/auth/user_auth_repo.dart';

// ignore_for_file: argument_type_not_assignable

@LazySingleton(as: IAuthFacade)
class UserAuthFacade implements IAuthFacade {
  final UserAuthRepo _userAuthRepo;
  UserAuthFacade(this._userAuthRepo);

  @override
  Future<Either<AuthFailure, Unit>> registerUser({User user}) async {
    try {
      final UserDto userDto = UserDto.fromDomain(user);

      final UserDto userInfoFromApi = await _userAuthRepo.create(
        reqBody: userDto.toJson(),
        urlSufix: userCreateSufix,
      );

      await _userAuthRepo.persistToken(userInfoFromApi.token);

      return right(unit);
    } on ApiError catch (e) {
      switch (e.errorMsg) {
        case "ERROR_EMAIL_EXISTS":
          return left(const AuthFailure.emailAlredyInUse());
          break;
        case "ERROR_CPF_EXISTS":
          return left(const AuthFailure.cpfAlredyInUse());
          break;
        case "ERROR_IDCONFEF_EXISTS":
          return left(const AuthFailure.idConfefAlredyInUse());
          break;
        default:
          return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    try {
      final user = {
        "user_name": emailAddress.getOrCrash(),
        "password": password.getOrCrash(),
      };

      final UserDto userInfoFromApi = await _userAuthRepo.authenticate(
        reqBody: jsonEncode(user),
        urlSufix: userAuthSufix,
      );

      await _userAuthRepo.persistToken(userInfoFromApi.token);

      return right(unit);
    } on ApiError catch (e) {
      if (e.errorMsg == "ERROR_USER_NOT_FOUND") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<bool> userHasToken() => _userAuthRepo.hasToken();

  @override
  Future<void> deleteUserToken() => _userAuthRepo.deleteToken();

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    throw UnimplementedError();
  }
}
