import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_personal_avaliator/domain/auth/i_auth_facade.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';
import 'package:my_personal_avaliator/infrastructure/repositorys/user_repo.dart';

class UserAuthFacade implements IAuthFacate {
  final UserRepo _userRepo;

  UserAuthFacade(this._userRepo);

  @override
  Future<Either<AuthFailure, Unit>> registerUser(
      {EmailAddress emailAddress,
      Password password,
      NomeUsuario nome,
      String empresa,
      String site,
      Telefone telefone,
      CPF cpf,
      IDCONFEF idconfef}) {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final nomeStr = nome.getOrCrash();
    final telefoneStr = emailAddress.getOrCrash();

    _userRepo.register(user: Usuario());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}
