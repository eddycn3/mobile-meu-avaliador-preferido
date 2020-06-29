import 'package:dartz/dartz.dart';
import 'package:my_personal_avaliator/domain/core/failures.dart';
import 'package:my_personal_avaliator/domain/core/value_objects.dart';
import 'package:my_personal_avaliator/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAdress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class NomeUsuario extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NomeUsuario(String input) {
    assert(input != null);
    return NomeUsuario._(validateUserName(input));
  }

  const NomeUsuario._(this.value);
}

class Telefone extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Telefone(String input) {
    assert(input != null);
    return Telefone._(validateUserPhone(input));
  }

  const Telefone._(this.value);
}

class CPF extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CPF(String input) {
    assert(input != null);
    return CPF._(validateUserCPF(input));
  }

  const CPF._(this.value);
}

class IDCONFEF extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory IDCONFEF(String input) {
    assert(input != null);
    return IDCONFEF._(validateUserIDCONFEF(input));
  }

  const IDCONFEF._(this.value);
}
