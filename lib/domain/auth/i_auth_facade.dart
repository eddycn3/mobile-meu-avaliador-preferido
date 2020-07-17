import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:my_personal_avaliator/domain/auth/auth_failure.dart';
import 'package:my_personal_avaliator/domain/auth/user_auth.dart';

import 'package:my_personal_avaliator/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> registerUser({@required User user});

  Future<bool> userHasToken();

  Future<void> deleteUserToken();

  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
