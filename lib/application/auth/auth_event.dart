part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckStarted() = SignedIn;
  const factory AuthEvent.signedOut() = SignedOut;
}
