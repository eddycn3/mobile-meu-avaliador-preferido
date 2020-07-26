part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState(
          {@required EmailAddress emailAddress,
          @required Password password,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) =
      _SignInState;

  factory SignInState.initial() => SignInState(
      emailAddress: EmailAddress(""),
      password: Password(""),
      showErrorMessages: false,
      isSubmitting: false,
      authFailOrSucessOption: none());
}
