import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:my_personal_avaliator/domain/auth/user_auth.dart';

import 'package:my_personal_avaliator/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, User>> registerUser({
    @required EmailAddress emailAddress,
    @required Password password,
    @required FullName nome,
    String empresa,
    String site,
    @required PhoneNumber telefone,
    @required CPF cpf,
    @required IDCONFEF idconfef,
  });

  Future<bool> userHasToken();

  Future<void> deleteUserToken();

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
