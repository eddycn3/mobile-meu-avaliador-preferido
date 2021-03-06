import "package:dartz/dartz.dart";
import "package:my_personal_avaliator/domain/core/failures.dart";
import 'package:my_personal_avaliator/domain/core/regex_utils.dart';

Either<ValueFailure<String>, String> validateWebSite(String input) {
  if (isWebSite(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidWebSite(failedValue: input));
}

Either<ValueFailure<String>, String> validateText(String input) {
  if (isText(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidText(failedValue: input));
}

Either<ValueFailure<String>, String> validateEmailAdress(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.emptyEmail(failedValue: input));
  }
  if (isEmail(input)) {
    return right(input);
  }

  return left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.emptyPassword(failedValue: input));
  }
  if (input.length < 8) {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateUserName(String input) {
  if (isValidPersonName(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPersonName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserPhone(String input) {
  if (isValidPhone(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserCPF(String input) {
  if (isValidCPF(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidCPF(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserIDCONFEF(String input) {
  if (isValidIDCONFEF(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidIdConfef(failedValue: input));
  }
}
