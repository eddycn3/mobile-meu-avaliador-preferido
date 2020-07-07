// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'freezed_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {int id,
      String userName,
      String passWord,
      int userType,
      String token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'userInfo')
          Avaliador userInfo}) {
    return _User(
      id: id,
      userName: userName,
      passWord: passWord,
      userType: userType,
      token: token,
      userInfo: userInfo,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  int get id;
  String get userName;
  String get passWord;
  int get userType;
  String get token;
  @JsonSerializable(explicitToJson: true)
  @JsonKey(name: 'userInfo')
  Avaliador get userInfo;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String userName,
      String passWord,
      int userType,
      String token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'userInfo')
          Avaliador userInfo});

  $AvaliadorCopyWith<$Res> get userInfo;
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userName = freezed,
    Object passWord = freezed,
    Object userType = freezed,
    Object token = freezed,
    Object userInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      userName: userName == freezed ? _value.userName : userName as String,
      passWord: passWord == freezed ? _value.passWord : passWord as String,
      userType: userType == freezed ? _value.userType : userType as int,
      token: token == freezed ? _value.token : token as String,
      userInfo: userInfo == freezed ? _value.userInfo : userInfo as Avaliador,
    ));
  }

  @override
  $AvaliadorCopyWith<$Res> get userInfo {
    if (_value.userInfo == null) {
      return null;
    }
    return $AvaliadorCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String userName,
      String passWord,
      int userType,
      String token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'userInfo')
          Avaliador userInfo});

  @override
  $AvaliadorCopyWith<$Res> get userInfo;
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object userName = freezed,
    Object passWord = freezed,
    Object userType = freezed,
    Object token = freezed,
    Object userInfo = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      userName: userName == freezed ? _value.userName : userName as String,
      passWord: passWord == freezed ? _value.passWord : passWord as String,
      userType: userType == freezed ? _value.userType : userType as int,
      token: token == freezed ? _value.token : token as String,
      userInfo: userInfo == freezed ? _value.userInfo : userInfo as Avaliador,
    ));
  }
}

@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id,
      this.userName,
      this.passWord,
      this.userType,
      this.token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'userInfo')
          this.userInfo});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final int id;
  @override
  final String userName;
  @override
  final String passWord;
  @override
  final int userType;
  @override
  final String token;
  @override
  @JsonSerializable(explicitToJson: true)
  @JsonKey(name: 'userInfo')
  final Avaliador userInfo;

  @override
  String toString() {
    return 'User(id: $id, userName: $userName, passWord: $passWord, userType: $userType, token: $token, userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(passWord) ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(userInfo);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {int id,
      String userName,
      String passWord,
      int userType,
      String token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'userInfo')
          Avaliador userInfo}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get userName;
  @override
  String get passWord;
  @override
  int get userType;
  @override
  String get token;
  @override
  @JsonSerializable(explicitToJson: true)
  @JsonKey(name: 'userInfo')
  Avaliador get userInfo;
  @override
  _$UserCopyWith<_User> get copyWith;
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
      String telefone,
      String cpf,
      String id_confef}) {
    return _Avaliador(
      nome: nome,
      empresa: empresa,
      site: site,
      email: email,
      telefone: telefone,
      cpf: cpf,
      id_confef: id_confef,
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
  String get cpf;
  String get id_confef;

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
      String telefone,
      String cpf,
      String id_confef});
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
    Object cpf = freezed,
    Object id_confef = freezed,
  }) {
    return _then(_value.copyWith(
      nome: nome == freezed ? _value.nome : nome as String,
      empresa: empresa == freezed ? _value.empresa : empresa as String,
      site: site == freezed ? _value.site : site as String,
      email: email == freezed ? _value.email : email as String,
      telefone: telefone == freezed ? _value.telefone : telefone as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
      id_confef: id_confef == freezed ? _value.id_confef : id_confef as String,
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
      String telefone,
      String cpf,
      String id_confef});
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
    Object cpf = freezed,
    Object id_confef = freezed,
  }) {
    return _then(_Avaliador(
      nome: nome == freezed ? _value.nome : nome as String,
      empresa: empresa == freezed ? _value.empresa : empresa as String,
      site: site == freezed ? _value.site : site as String,
      email: email == freezed ? _value.email : email as String,
      telefone: telefone == freezed ? _value.telefone : telefone as String,
      cpf: cpf == freezed ? _value.cpf : cpf as String,
      id_confef: id_confef == freezed ? _value.id_confef : id_confef as String,
    ));
  }
}

@JsonSerializable()
class _$_Avaliador implements _Avaliador {
  const _$_Avaliador(
      {this.nome,
      this.empresa,
      this.site,
      this.email,
      this.telefone,
      this.cpf,
      this.id_confef});

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
  final String cpf;
  @override
  final String id_confef;

  @override
  String toString() {
    return 'Avaliador(nome: $nome, empresa: $empresa, site: $site, email: $email, telefone: $telefone, cpf: $cpf, id_confef: $id_confef)';
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
                    .equals(other.telefone, telefone)) &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)) &&
            (identical(other.id_confef, id_confef) ||
                const DeepCollectionEquality()
                    .equals(other.id_confef, id_confef)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nome) ^
      const DeepCollectionEquality().hash(empresa) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(telefone) ^
      const DeepCollectionEquality().hash(cpf) ^
      const DeepCollectionEquality().hash(id_confef);

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
      String telefone,
      String cpf,
      String id_confef}) = _$_Avaliador;

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
  String get cpf;
  @override
  String get id_confef;
  @override
  _$AvaliadorCopyWith<_Avaliador> get copyWith;
}
