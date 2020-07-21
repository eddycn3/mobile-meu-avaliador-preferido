part of 'register_bloc.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState(
          {@required EmailAddress emailAddress,
          @required Password password,
          @required FullName nome,
          String empresa,
          String site,
          @required PhoneNumber telefone,
          @required CPF cpf,
          @required IDCONFEF idconfef,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) =
      _RegisterState;

  factory RegisterState.initial() => RegisterState(
        emailAddress: EmailAddress(""),
        password: Password(""),
        nome: FullName(""),
        empresa: "",
        site: "",
        telefone: PhoneNumber(""),
        cpf: CPF(""),
        idconfef: IDCONFEF(""),
        showErrorMessages: false,
        isSubmitting: false,
        authFailOrSucessOption: none(),
      );
}
