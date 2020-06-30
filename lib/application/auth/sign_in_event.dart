part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String email) = EmailChanged;
  const factory SignInEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignInEvent.signInWithEmailAndPassword() =
      SignInWithEmailAndPassword;
  const factory SignInEvent.registerWithEmailAndPassword(String password) =
      RegisterWithEmailAndPassword;

  const factory SignInEvent.googleSignInWithEmailAndPassword(String password) =
      GoogleSignInWithEmailAndPassword;
}
