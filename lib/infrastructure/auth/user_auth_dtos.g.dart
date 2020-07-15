// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as int,
    userName: json['user_name'] as String,
    passWord: json['password'] as String,
    userType: json['user_type'] as int,
    token: json['token'] as String,
    userInfo: json['user_info'] == null
        ? null
        : AvaliadorDto.fromJson(json['user_info'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'user_name': instance.userName,
      'password': instance.passWord,
      'user_type': instance.userType,
      'token': instance.token,
      'user_info': instance.userInfo,
    };

_$_Avaliador _$_$_AvaliadorFromJson(Map<String, dynamic> json) {
  return _$_Avaliador(
    nome: json['nome'] as String,
    empresa: json['empresa'] as String,
    site: json['site'] as String,
    email: json['email'] as String,
    telefone: json['telefone'] as String,
    cpf: json['cpf'] as String,
    id_confef: json['id_confef'] as String,
  );
}

Map<String, dynamic> _$_$_AvaliadorToJson(_$_Avaliador instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'empresa': instance.empresa,
      'site': instance.site,
      'email': instance.email,
      'telefone': instance.telefone,
      'cpf': instance.cpf,
      'id_confef': instance.id_confef,
    };
