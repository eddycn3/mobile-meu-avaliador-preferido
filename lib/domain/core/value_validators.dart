import "package:dartz/dartz.dart";
import "package:my_personal_avaliator/domain/core/failures.dart";
import 'package:my_personal_avaliator/domain/core/regex_utils.dart';

Either<ValueFailure<String>,String> validateEmailAdress(String input){
  if(RegexUtils.isEmail(input)){
    return right(input);
  }else{
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>,String> validatePassword(String input){
  if(input.length >= 8){
    return right(input);
  }else{
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}