import 'package:my_personal_avaliator/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;
  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const why = "Encoutred a ValueFailure. Terminating.";
    return Error.safeToString("$why , the error: $valueFailure");
  }
}
