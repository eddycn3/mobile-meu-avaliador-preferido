part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckStarted(String token) = SignedIn;
  const factory AuthEvent.signedOut() = SignedOut;
}
