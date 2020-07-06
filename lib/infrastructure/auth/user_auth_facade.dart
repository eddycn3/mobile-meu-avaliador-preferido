import 'dart:convert';

import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';
import 'package:my_personal_avaliator/infrastructure/api.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_result.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_routes.dart';
import 'package:my_personal_avaliator/infrastructure/models/freezed_classes.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';

class UserAuthFacade implements IAuthFacate {
  final UserRepo _userRepo;

  UserAuthFacade(this._userRepo);

  @override
  Future<Either<AuthFailure, User>> registerUser(
      {EmailAddress emailAddress,
      Password password,
      NomeUsuario nome,
      String empresa,
      String site,
      Telefone telefone,
      CPF cpf,
      IDCONFEF idconfef}) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final nomeStr = nome.getOrCrash();
    final telefoneStr = emailAddress.getOrCrash();
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
              telefone: telefoneStr));

      final Map<String, dynamic> retApi = await Api.post(
        reqBody: jsonEncode(user),
        urlSufix: userCreateSufix,
      );

      final User userFromApi = User.fromJson(retApi);

      _userRepo.persistToken(userFromApi.token);

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
      final retApi =
          await Api.post(reqBody: jsonEncode(user), urlSufix: userAuthSufix);
      return right(User.fromJson(retApi));
    } on ApiError catch (e) {
      if (e.errorMsg == "ERROR_USER_NOT_FOUND") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}
