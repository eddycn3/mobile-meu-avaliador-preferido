// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _User call(
      {int id,
      @required
      @JsonKey(name: 'user_name')
          String userName,
      @required
      @JsonKey(name: 'password')
          String passWord,
      @required
      @JsonKey(name: 'user_type')
          int userType,
      String token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'user_info')
          AvaliadorDto userInfo}) {
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
const $UserDto = _$UserDtoTearOff();

mixin _$UserDto {
  int get id;
  @JsonKey(name: 'user_name')
  String get userName;
  @JsonKey(name: 'password')
  String get passWord;
  @JsonKey(name: 'user_type')
  int get userType;
  String get token;
  @JsonSerializable(explicitToJson: true)
  @JsonKey(name: 'user_info')
  AvaliadorDto get userInfo;

  Map<String, dynamic> toJson();
  $UserDtoCopyWith<UserDto> get copyWith;
}

abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'user_name')
          String userName,
      @JsonKey(name: 'password')
          String passWord,
      @JsonKey(name: 'user_type')
          int userType,
      String token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'user_info')
          AvaliadorDto userInfo});

  $AvaliadorDtoCopyWith<$Res> get userInfo;
}

class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

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
      userInfo:
          userInfo == freezed ? _value.userInfo : userInfo as AvaliadorDto,
    ));
  }

  @override
  $AvaliadorDtoCopyWith<$Res> get userInfo {
    if (_value.userInfo == null) {
      return null;
    }
    return $AvaliadorDtoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value));
    });
  }
}

abstract class _$UserCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'user_name')
          String userName,
      @JsonKey(name: 'password')
          String passWord,
      @JsonKey(name: 'user_type')
          int userType,
      String token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'user_info')
          AvaliadorDto userInfo});

  @override
  $AvaliadorDtoCopyWith<$Res> get userInfo;
}

class __$UserCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
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
      userInfo:
          userInfo == freezed ? _value.userInfo : userInfo as AvaliadorDto,
    ));
  }
}

@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {this.id,
      @required
      @JsonKey(name: 'user_name')
          this.userName,
      @required
      @JsonKey(name: 'password')
          this.passWord,
      @required
      @JsonKey(name: 'user_type')
          this.userType,
      this.token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'user_info')
          this.userInfo})
      : assert(userName != null),
        assert(passWord != null),
        assert(userType != null),
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  @JsonKey(name: 'password')
  final String passWord;
  @override
  @JsonKey(name: 'user_type')
  final int userType;
  @override
  final String token;
  @override
  @JsonSerializable(explicitToJson: true)
  @JsonKey(name: 'user_info')
  final AvaliadorDto userInfo;

  @override
  String toString() {
    return 'UserDto(id: $id, userName: $userName, passWord: $passWord, userType: $userType, token: $token, userInfo: $userInfo)';
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

abstract class _User extends UserDto {
  const _User._() : super._();
  const factory _User(
      {int id,
      @required
      @JsonKey(name: 'user_name')
          String userName,
      @required
      @JsonKey(name: 'password')
          String passWord,
      @required
      @JsonKey(name: 'user_type')
          int userType,
      String token,
      @JsonSerializable(explicitToJson: true)
      @JsonKey(name: 'user_info')
          AvaliadorDto userInfo}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'user_name')
  String get userName;
  @override
  @JsonKey(name: 'password')
  String get passWord;
  @override
  @JsonKey(name: 'user_type')
  int get userType;
  @override
  String get token;
  @override
  @JsonSerializable(explicitToJson: true)
  @JsonKey(name: 'user_info')
  AvaliadorDto get userInfo;
  @override
  _$UserCopyWith<_User> get copyWith;
}

AvaliadorDto _$AvaliadorDtoFromJson(Map<String, dynamic> json) {
  return _Avaliador.fromJson(json);
}

class _$AvaliadorDtoTearOff {
  const _$AvaliadorDtoTearOff();

  _Avaliador call(
      {@required String nome,
      String empresa,
      String site,
      @required String email,
      @required String telefone,
      @required String cpf,
      @required String id_confef}) {
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
const $AvaliadorDto = _$AvaliadorDtoTearOff();

mixin _$AvaliadorDto {
  String get nome;
  String get empresa;
  String get site;
  String get email;
  String get telefone;
  String get cpf;
  String get id_confef;

  Map<String, dynamic> toJson();
  $AvaliadorDtoCopyWith<AvaliadorDto> get copyWith;
}

abstract class $AvaliadorDtoCopyWith<$Res> {
  factory $AvaliadorDtoCopyWith(
          AvaliadorDto value, $Res Function(AvaliadorDto) then) =
      _$AvaliadorDtoCopyWithImpl<$Res>;
  $Res call(
      {String nome,
      String empresa,
      String site,
      String email,
      String telefone,
      String cpf,
      String id_confef});
}

class _$AvaliadorDtoCopyWithImpl<$Res> implements $AvaliadorDtoCopyWith<$Res> {
  _$AvaliadorDtoCopyWithImpl(this._value, this._then);

  final AvaliadorDto _value;
  // ignore: unused_field
  final $Res Function(AvaliadorDto) _then;

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

abstract class _$AvaliadorCopyWith<$Res>
    implements $AvaliadorDtoCopyWith<$Res> {
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

class __$AvaliadorCopyWithImpl<$Res> extends _$AvaliadorDtoCopyWithImpl<$Res>
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
class _$_Avaliador extends _Avaliador {
  const _$_Avaliador(
      {@required this.nome,
      this.empresa,
      this.site,
      @required this.email,
      @required this.telefone,
      @required this.cpf,
      @required this.id_confef})
      : assert(nome != null),
        assert(email != null),
        assert(telefone != null),
        assert(cpf != null),
        assert(id_confef != null),
        super._();

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
    return 'AvaliadorDto(nome: $nome, empresa: $empresa, site: $site, email: $email, telefone: $telefone, cpf: $cpf, id_confef: $id_confef)';
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

abstract class _Avaliador extends AvaliadorDto {
  const _Avaliador._() : super._();
  const factory _Avaliador(
      {@required String nome,
      String empresa,
      String site,
      @required String email,
      @required String telefone,
      @required String cpf,
      @required String id_confef}) = _$_Avaliador;

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
