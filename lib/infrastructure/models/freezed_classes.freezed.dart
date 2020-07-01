// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'freezed_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Usuario _$UsuarioFromJson(Map<String, dynamic> json) {
  return _Usuario.fromJson(json);
}

class _$UsuarioTearOff {
  const _$UsuarioTearOff();

  _Usuario call(
      {String userName,
      String passWord,
      int userType,
      String token,
      dynamic userInfo}) {
    return _Usuario(
      userName: userName,
      passWord: passWord,
      userType: userType,
      token: token,
      userInfo: userInfo,
    );
  }
}

// ignore: unused_element
const $Usuario = _$UsuarioTearOff();

mixin _$Usuario {
  String get userName;
  String get passWord;
  int get userType;
  String get token;
  dynamic get userInfo;

  Map<String, dynamic> toJson();
  $UsuarioCopyWith<Usuario> get copyWith;
}

abstract class $UsuarioCopyWith<$Res> {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) then) =
      _$UsuarioCopyWithImpl<$Res>;
  $Res call(
      {String userName,
      String passWord,
      int userType,
      String token,
      dynamic userInfo});
}

class _$UsuarioCopyWithImpl<$Res> implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._value, this._then);

  final Usuario _value;
  // ignore: unused_field
  final $Res Function(Usuario) _then;

  @override
  $Res call({
    Object userName = freezed,
    Object passWord = freezed,
    Object userType = freezed,
    Object token = freezed,
    Object userInfo = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed ? _value.userName : userName as String,
      passWord: passWord == freezed ? _value.passWord : passWord as String,
      userType: userType == freezed ? _value.userType : userType as int,
      token: token == freezed ? _value.token : token as String,
      userInfo: userInfo == freezed ? _value.userInfo : userInfo as dynamic,
    ));
  }
}

abstract class _$UsuarioCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$UsuarioCopyWith(_Usuario value, $Res Function(_Usuario) then) =
      __$UsuarioCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userName,
      String passWord,
      int userType,
      String token,
      dynamic userInfo});
}

class __$UsuarioCopyWithImpl<$Res> extends _$UsuarioCopyWithImpl<$Res>
    implements _$UsuarioCopyWith<$Res> {
  __$UsuarioCopyWithImpl(_Usuario _value, $Res Function(_Usuario) _then)
      : super(_value, (v) => _then(v as _Usuario));

  @override
  _Usuario get _value => super._value as _Usuario;

  @override
  $Res call({
    Object userName = freezed,
    Object passWord = freezed,
    Object userType = freezed,
    Object token = freezed,
    Object userInfo = freezed,
  }) {
    return _then(_Usuario(
      userName: userName == freezed ? _value.userName : userName as String,
      passWord: passWord == freezed ? _value.passWord : passWord as String,
      userType: userType == freezed ? _value.userType : userType as int,
      token: token == freezed ? _value.token : token as String,
      userInfo: userInfo == freezed ? _value.userInfo : userInfo as dynamic,
    ));
  }
}

@JsonSerializable()
class _$_Usuario implements _Usuario {
  const _$_Usuario(
      {this.userName, this.passWord, this.userType, this.token, this.userInfo});

  factory _$_Usuario.fromJson(Map<String, dynamic> json) =>
      _$_$_UsuarioFromJson(json);

  @override
  final String userName;
  @override
  final String passWord;
  @override
  final int userType;
  @override
  final String token;
  @override
  final dynamic userInfo;

  @override
  String toString() {
    return 'Usuario(userName: $userName, passWord: $passWord, userType: $userType, token: $token, userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Usuario &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.passWord, passWord) ||
                const DeepCollectionEquality()
                    .equals(other.passWord, passWord)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(passWord) ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(userInfo);

  @override
  _$UsuarioCopyWith<_Usuario> get copyWith =>
      __$UsuarioCopyWithImpl<_Usuario>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UsuarioToJson(this);
  }
}

abstract class _Usuario implements Usuario {
  const factory _Usuario(
      {String userName,
      String passWord,
      int userType,
      String token,
      dynamic userInfo}) = _$_Usuario;

  factory _Usuario.fromJson(Map<String, dynamic> json) = _$_Usuario.fromJson;

  @override
  String get userName;
  @override
  String get passWord;
  @override
  int get userType;
  @override
  String get token;
  @override
  dynamic get userInfo;
  @override
  _$UsuarioCopyWith<_Usuario> get copyWith;
}

Avaliador _$AvaliadorFromJson(Map<String, dynamic> json) {
  return _Avaliador.fromJson(json);
}

class _$AvaliadorTearOff {
  const _$AvaliadorTearOff();

  _Avaliador call(
      {String nome,
      String empresa,
      String site,
      String email,
      String telefone}) {
    return _Avaliador(
      nome: nome,
      empresa: empresa,
      site: site,
      email: email,
      telefone: telefone,
    );
  }
}

// ignore: unused_element
const $Avaliador = _$AvaliadorTearOff();

mixin _$Avaliador {
  String get nome;
  String get empresa;
  String get site;
  String get email;
  String get telefone;

  Map<String, dynamic> toJson();
  $AvaliadorCopyWith<Avaliador> get copyWith;
}

abstract class $AvaliadorCopyWith<$Res> {
  factory $AvaliadorCopyWith(Avaliador value, $Res Function(Avaliador) then) =
      _$AvaliadorCopyWithImpl<$Res>;
  $Res call(
      {String nome,
      String empresa,
      String site,
      String email,
      String telefone});
}

class _$AvaliadorCopyWithImpl<$Res> implements $AvaliadorCopyWith<$Res> {
  _$AvaliadorCopyWithImpl(this._value, this._then);

  final Avaliador _value;
  // ignore: unused_field
  final $Res Function(Avaliador) _then;

  @override
  $Res call({
    Object nome = freezed,
    Object empresa = freezed,
    Object site = freezed,
    Object email = freezed,
    Object telefone = freezed,
  }) {
    return _then(_value.copyWith(
      nome: nome == freezed ? _value.nome : nome as String,
      empresa: empresa == freezed ? _value.empresa : empresa as String,
      site: site == freezed ? _value.site : site as String,
      email: email == freezed ? _value.email : email as String,
      telefone: telefone == freezed ? _value.telefone : telefone as String,
    ));
  }
}

abstract class _$AvaliadorCopyWith<$Res> implements $AvaliadorCopyWith<$Res> {
  factory _$AvaliadorCopyWith(
          _Avaliador value, $Res Function(_Avaliador) then) =
      __$AvaliadorCopyWithImpl<$Res>;
  @override
  $Res call(
      {String nome,
      String empresa,
      String site,
      String email,
      String telefone});
}

class __$AvaliadorCopyWithImpl<$Res> extends _$AvaliadorCopyWithImpl<$Res>
    implements _$AvaliadorCopyWith<$Res> {
  __$AvaliadorCopyWithImpl(_Avaliador _value, $Res Function(_Avaliador) _then)
      : super(_value, (v) => _then(v as _Avaliador));

  @override
  _Avaliador get _value => super._value as _Avaliador;

  @override
  $Res call({
    Object nome = freezed,
    Object empresa = freezed,
    Object site = freezed,
    Object email = freezed,
    Object telefone = freezed,
  }) {
    return _then(_Avaliador(
      nome: nome == freezed ? _value.nome : nome as String,
      empresa: empresa == freezed ? _value.empresa : empresa as String,
      site: site == freezed ? _value.site : site as String,
      email: email == freezed ? _value.email : email as String,
      telefone: telefone == freezed ? _value.telefone : telefone as String,
    ));
  }
}

@JsonSerializable()
class _$_Avaliador implements _Avaliador {
  const _$_Avaliador(
      {this.nome, this.empresa, this.site, this.email, this.telefone});

  factory _$_Avaliador.fromJson(Map<String, dynamic> json) =>
      _$_$_AvaliadorFromJson(json);

  @override
  final String nome;
  @override
  final String empresa;
  @override
  final String site;
  @override
  final String email;
  @override
  final String telefone;

  @override
  String toString() {
    return 'Avaliador(nome: $nome, empresa: $empresa, site: $site, email: $email, telefone: $telefone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Avaliador &&
            (identical(other.nome, nome) ||
                const DeepCollectionEquality().equals(other.nome, nome)) &&
            (identical(other.empresa, empresa) ||
                const DeepCollectionEquality()
                    .equals(other.empresa, empresa)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.telefone, telefone) ||
                const DeepCollectionEquality()
                    .equals(other.telefone, telefone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nome) ^
      const DeepCollectionEquality().hash(empresa) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(telefone);

  @override
  _$AvaliadorCopyWith<_Avaliador> get copyWith =>
      __$AvaliadorCopyWithImpl<_Avaliador>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AvaliadorToJson(this);
  }
}

abstract class _Avaliador implements Avaliador {
  const factory _Avaliador(
      {String nome,
      String empresa,
      String site,
      String email,
      String telefone}) = _$_Avaliador;

  factory _Avaliador.fromJson(Map<String, dynamic> json) =
      _$_Avaliador.fromJson;

  @override
  String get nome;
  @override
  String get empresa;
  @override
  String get site;
  @override
  String get email;
  @override
  String get telefone;
  @override
  _$AvaliadorCopyWith<_Avaliador> get copyWith;
}
