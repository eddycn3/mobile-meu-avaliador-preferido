import "package:dartz/dartz.dart";
import "package:my_personal_avaliator/domain/core/failures.dart";
import 'package:my_personal_avaliator/domain/core/regex_utils.dart';

Either<ValueFailure<String>, String> validateEmailAdress(String input) {
  if (isEmail(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length <= 8) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
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
