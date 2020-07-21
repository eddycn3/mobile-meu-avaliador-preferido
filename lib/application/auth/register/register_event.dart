part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged(String email) = EmailChanged;
  const factory RegisterEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory RegisterEvent.nomeUsuarioChanged(String nomeUsuario) =
      NomeUsuarioChanged;
  const factory RegisterEvent.telefoneChanged(String telefone) =
      TelefoneChanged;
  const factory RegisterEvent.cpfChanged(String cpf) = CpfChanged;
  const factory RegisterEvent.idConfefChanged(String idconfef) =
      IdConfefChanged;

  const factory RegisterEvent.empresaChanged(String idconfef) = EmpresaChanged;

  const factory RegisterEvent.siteChanged(String idconfef) = SiteChanged;

  const factory RegisterEvent.registerUser() = RegisterUser;
}
