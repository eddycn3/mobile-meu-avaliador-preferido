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

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    assert(input != null);
    return FullName._(validateUserName(input));
  }

  const FullName._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(validateUserPhone(input));
  }

  const PhoneNumber._(this.value);
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
