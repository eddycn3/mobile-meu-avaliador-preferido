import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_personal_avaliator/domain/auth/user_auth.dart';
import 'package:my_personal_avaliator/domain/auth/value_objects.dart';

part 'user_auth_dtos.freezed.dart';
part 'user_auth_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    int id,
    @JsonKey(name: 'user_name') String userName,
    @JsonKey(name: 'password') String passWord,
    @JsonKey(name: 'user_type') int userType,
    String token,
    @JsonSerializable(explicitToJson: true)
    @JsonKey(name: 'user_info')
        AvaliadorDto userInfo,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
        id: user.id,
        userName: user.userName.getOrCrash(),
        passWord: user.passWord.getOrCrash(),
        token: user.token,
        userInfo: AvaliadorDto.fromDomain(user.userInfo),
        userType: 1);
  }

  User toDomain() {
    return User(
      id: id,
      userName: EmailAddress(userName),
      passWord: Password(passWord),
      token: token,
      userInfo: userInfo.toDomain(),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

@freezed
abstract class AvaliadorDto implements _$AvaliadorDto {
  const AvaliadorDto._();

  const factory AvaliadorDto(
      {@required String nome,
      String empresa,
      String site,
      @required String email,
      @required String telefone,
      @required String cpf,
      // ignore: non_constant_identifier_names
      @required String id_confef}) = _AvaliadorDto;

  factory AvaliadorDto.fromDomain(Avaliador avaliador) {
    return AvaliadorDto(
      nome: avaliador.nome.getOrCrash(),
      empresa: avaliador.empresa.getOrCrash(),
      telefone: avaliador.telefone.getOrCrash(),
      cpf: avaliador.cpf.getOrCrash(),
      email: avaliador.email.getOrCrash(),
      id_confef: avaliador.id_confef.getOrCrash(),
      site: avaliador.site.getOrCrash(),
    );
  }

  Avaliador toDomain() {
    return Avaliador(
        nome: FullName(nome),
        empresa: Empresa(empresa),
        site: WebSite(site),
        email: EmailAddress(email),
        telefone: PhoneNumber(telefone),
        cpf: CPF(cpf),
        id_confef: IDCONFEF(id_confef));
  }

  factory AvaliadorDto.fromJson(Map<String, dynamic> json) =>
      _$AvaliadorDtoFromJson(json);
}
