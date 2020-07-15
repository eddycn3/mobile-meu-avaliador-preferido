import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';

part 'user_auth.freezed.dart';

@freezed
abstract class User with _$User {
  User._();
  const factory User({
    int id,
    @required EmailAddress userName,
    @required Password passWord,
    int userType,
    String token,
    Avaliador userInfo,
  }) = _User;
}

@freezed
abstract class Avaliador with _$Avaliador {
  Avaliador._();

  const factory Avaliador({
    @required FullName nome,
    String empresa,
    String site,
    @required EmailAddress email,
    @required PhoneNumber telefone,
    @required CPF cpf,
    // ignore: non_constant_identifier_names
    @required IDCONFEF id_confef,
  }) = _Avaliador;
}
