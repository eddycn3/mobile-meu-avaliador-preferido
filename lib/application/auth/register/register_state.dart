part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState(
          {@required EmailAddress emailAddress,
          @required Password password,
          @required NomeUsuario nome,
          String empresa,
          String site,
          @required Telefone telefone,
          @required CPF cpf,
          @required IDCONFEF idconfef,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) =
      _RegisterState;

  factory RegisterState.initial() => RegisterState(
        emailAddress: EmailAddress(""),
        password: Password(""),
        nome: NomeUsuario(""),
        empresa: "",
        site: "",
        telefone: Telefone(""),
        cpf: CPF(""),
        idconfef: IDCONFEF(""),
        showErrorMessages: false,
        isSubmitting: false,
        authFailOrSucessOption: none(),
      );
}
