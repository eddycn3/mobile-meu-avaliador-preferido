// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as int,
    userName: json['userName'] as String,
    passWord: json['passWord'] as String,
    userType: json['userType'] as int,
    token: json['token'] as String,
    userInfo: json['userInfo'] == null
        ? null
        : Avaliador.fromJson(json['userInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'passWord': instance.passWord,
      'userType': instance.userType,
      'token': instance.token,
      'userInfo': instance.userInfo,
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
