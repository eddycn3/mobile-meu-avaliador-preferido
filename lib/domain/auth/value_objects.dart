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

class Password extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input){
    assert(input !=null);
    return Password._(validatePassword(input),);
  }

  const Password._(this.value);
 
}
