import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_personal_avaliator/application/blocs/auth/auth_bloc.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';

abstract class IAuthFacate {
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> registerUser({
    @required EmailAddress emailAddress,
    @required Password password,
    @required NomeUsuario nome,
    String empresa,
    String site,
    @required Telefone telefone,
    @required CPF cpf,
    @required IDCONFEF idconfef,
  });
}
