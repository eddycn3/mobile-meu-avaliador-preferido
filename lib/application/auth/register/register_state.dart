part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState(
          {@required User user,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) =
      _RegisterState;

  factory RegisterState.initial() => RegisterState(
        user: User.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        authFailOrSucessOption: none(),
      );
}
