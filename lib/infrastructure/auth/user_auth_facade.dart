import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';
import 'package:my_personal_avaliator/domain/entitys/freezed_classes.dart';
import 'package:my_personal_avaliator/infrastructure/api.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_result.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_routes.dart';
import 'package:my_personal_avaliator/infrastructure/local_repositorys/user_repo.dart';

@LazySingleton(as: IAuthFacade)
class UserAuthFacade implements IAuthFacade {
  final UserRepo _userRepo;
  UserAuthFacade(this._userRepo);

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

      final retApi = await Api.post(
        reqBody: jsonEncode(user),
        urlSufix: userCreateSufix,
      );

      final User userFromApi = User.fromJson(jsonDecode(retApi));

      await _userRepo.persistToken(userFromApi.token);

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
      final retApi = await Api.post(
        reqBody: jsonEncode(user),
        urlSufix: userAuthSufix,
      );
      final User userRet = User.fromJson(jsonDecode(retApi));
      await _userRepo.persistToken(userRet.token);
      return right(userRet);
    } on ApiError catch (e) {
      if (e.errorMsg == "ERROR_USER_NOT_FOUND") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<bool> userHasToken() => _userRepo.hasToken();

  @override
  Future<void> deleteUserToken() => _userRepo.deleteToken();

  @override
  Future<Either<AuthFailure, Avaliador>> getUserInfo({
    int id,
    String userToken,
  }) async {
    final userInfo = await Api.get(
      urlSufix: userInfoSufix + id.toString(),
      userToken: userToken,
    );
    return left(const AuthFailure.serverError());
  }
}
