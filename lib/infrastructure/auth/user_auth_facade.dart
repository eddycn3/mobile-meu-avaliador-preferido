import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/user_auth.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_error.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_routes.dart';
import 'package:my_personal_avaliator/infrastructure/auth/user_auth_repo.dart';

@LazySingleton(as: IAuthFacade)
class UserAuthFacade implements IAuthFacade {
  final UserAuthRepo _userAuthRepo;
  UserAuthFacade(this._userAuthRepo);

  @override
  Future<Either<AuthFailure, User>> registerUser({
    EmailAddress emailAddress,
    Password password,
    FullName nome,
    String empresa,
    String site,
    PhoneNumber telefone,
    CPF cpf,
    IDCONFEF idconfef,
  }) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final nomeStr = nome.getOrCrash();
    final telefoneStr = telefone.getOrCrash();
    final cpfStr = cpf.getOrCrash();
    final idConfefStr = idconfef.getOrCrash();
    try {
      final user = User(
          userName: emailStr,
          passWord: passwordStr,
          userType: 1,
          userInfo: Avaliador(
              nome: nomeStr,
              email: emailStr,
              empresa: empresa,
              site: site,
              telefone: telefoneStr,
              cpf: cpfStr,
              id_confef: idConfefStr));

      final retApi = await _userAuthRepo.create(
        reqBody: jsonEncode(user),
        urlSufix: userCreateSufix,
      );
      // ignore: argument_type_not_assignable
      final User userFromApi = User.fromJson(jsonDecode(retApi));

      await _userAuthRepo.persistToken(userFromApi.token);

      return right(userFromApi);
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
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    try {
      final emailStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();
      final user = User(userName: emailStr, passWord: passwordStr);
      final retApi = await _userAuthRepo.create(
        reqBody: jsonEncode(user),
        urlSufix: userAuthSufix,
      );
      // ignore: argument_type_not_assignable
      final User userRet = User.fromJson(jsonDecode(retApi));
      await _userAuthRepo.persistToken(userRet.token);
      return right(userRet);
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
