part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged(String email) = EmailChanged;

  const factory RegisterEvent.passwordChanged(String password) =
      PasswordChanged;

  const factory RegisterEvent.userInfoChanged(Avaliador userInfo) =
      UserInfoChanged;

  const factory RegisterEvent.registerUser() = RegisterUser;
}
