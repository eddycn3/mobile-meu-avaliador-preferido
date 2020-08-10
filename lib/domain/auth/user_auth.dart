import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';
import 'package:my_personal_avaliator/domain/core/failures.dart';

part 'user_auth.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();
  const factory User({
    int id,
    @required EmailAddress userName,
    @required Password passWord,
    int userType,
    String token,
    UserInfo<Avaliador> userInfo,
  }) = _User;

  factory User.empty() => User(
        id: 0,
        userName: EmailAddress(""),
        passWord: Password(""),
        token: "",
        userInfo: UserInfo(Avaliador.empty()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return userName.failureOrUnit
        .andThen(passWord.failureOrUnit)
        .andThen(userInfo.getOrCrash())
        .fold((l) => some(l), (_) => none());
  }
}

@freezed
abstract class Avaliador implements _$Avaliador {
  const Avaliador._();

  const factory Avaliador({
    @required FullName nome,
    Empresa empresa,
    WebSite site,
    @required EmailAddress email,
    @required PhoneNumber telefone,
    @required CPF cpf,
    // ignore: non_constant_identifier_names
    @required IDCONFEF id_confef,
  }) = _Avaliador;

  factory Avaliador.empty() => Avaliador(
      nome: FullName(""),
      email: EmailAddress(""),
      telefone: PhoneNumber(""),
      cpf: CPF(""),
      id_confef: IDCONFEF(""));

  Option<ValueFailure<dynamic>> get failureOption {
    return nome.failureOrUnit
        .andThen(nome.failureOrUnit)
        .andThen(empresa.failureOrUnit)
        .andThen(site.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(telefone.failureOrUnit)
        .andThen(cpf.failureOrUnit)
        .andThen(id_confef.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
