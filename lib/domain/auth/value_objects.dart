import 'package:dartz/dartz.dart';
import 'package:my_personal_avaliator/domain/auth/user_auth.dart';
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

class WebSite extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory WebSite(String input) {
    if (input != null) {
      return WebSite._(validateWebSite(input));
    }
    return WebSite._(right(input));
  }

  const WebSite._(this.value);
}

class Empresa extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Empresa(String input) {
    if (input != null) {
      return Empresa._(validateText(input));
    }
    return Empresa._(right(input));
  }

  const Empresa._(this.value);
}

class UserInfo<T> extends ValueObject<T> {
  @override
  final Either<ValueFailure<T>, T> value;

  factory UserInfo(T input) {
    return UserInfo._(right(input));
  }

  const UserInfo._(this.value);
}
