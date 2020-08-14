// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {int id,
      @required EmailAddress userName,
      @required Password passWord,
      int userType,
      String token,
      UserInfo<Avaliador> userInfo}) {
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
  EmailAddress get userName;
  Password get passWord;
  int get userType;
  String get token;
  UserInfo<Avaliador> get userInfo;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      EmailAddress userName,
      Password passWord,
      int userType,
      String token,
      UserInfo<Avaliador> userInfo});
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
      userName:
          userName == freezed ? _value.userName : userName as EmailAddress,
      passWord: passWord == freezed ? _value.passWord : passWord as Password,
      userType: userType == freezed ? _value.userType : userType as int,
      token: token == freezed ? _value.token : token as String,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo as UserInfo<Avaliador>,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      EmailAddress userName,
      Password passWord,
      int userType,
      String token,
      UserInfo<Avaliador> userInfo});
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
      userName:
          userName == freezed ? _value.userName : userName as EmailAddress,
      passWord: passWord == freezed ? _value.passWord : passWord as Password,
      userType: userType == freezed ? _value.userType : userType as int,
      token: token == freezed ? _value.token : token as String,
      userInfo: userInfo == freezed
          ? _value.userInfo
          : userInfo as UserInfo<Avaliador>,
    ));
  }
}

class _$_User extends _User {
  const _$_User(
      {this.id,
      @required this.userName,
      @required this.passWord,
      this.userType,
      this.token,
      this.userInfo})
      : assert(userName != null),
        assert(passWord != null),
        super._();

  @override
  final int id;
  @override
  final EmailAddress userName;
  @override
  final Password passWord;
  @override
  final int userType;
  @override
  final String token;
  @override
  final UserInfo<Avaliador> userInfo;

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
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {int id,
      @required EmailAddress userName,
      @required Password passWord,
      int userType,
      String token,
      UserInfo<Avaliador> userInfo}) = _$_User;

  @override
  int get id;
  @override
  EmailAddress get userName;
  @override
  Password get passWord;
  @override
  int get userType;
  @override
  String get token;
  @override
  UserInfo<Avaliador> get userInfo;
  @override
  _$UserCopyWith<_User> get copyWith;
}

class _$AvaliadorTearOff {
  const _$AvaliadorTearOff();

// ignore: unused_element
  _Avaliador call(
      {@required FullName nome,
      Empresa empresa,
      WebSite site,
      @required EmailAddress email,
      @required PhoneNumber telefone,
      @required CPF cpf,
      @required IDCONFEF id_confef}) {
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
  FullName get nome;
  Empresa get empresa;
  WebSite get site;
  EmailAddress get email;
  PhoneNumber get telefone;
  CPF get cpf;
  IDCONFEF get id_confef;

  $AvaliadorCopyWith<Avaliador> get copyWith;
}

abstract class $AvaliadorCopyWith<$Res> {
  factory $AvaliadorCopyWith(Avaliador value, $Res Function(Avaliador) then) =
      _$AvaliadorCopyWithImpl<$Res>;
  $Res call(
      {FullName nome,
      Empresa empresa,
      WebSite site,
      EmailAddress email,
      PhoneNumber telefone,
      CPF cpf,
      IDCONFEF id_confef});
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
      nome: nome == freezed ? _value.nome : nome as FullName,
      empresa: empresa == freezed ? _value.empresa : empresa as Empresa,
      site: site == freezed ? _value.site : site as WebSite,
      email: email == freezed ? _value.email : email as EmailAddress,
      telefone: telefone == freezed ? _value.telefone : telefone as PhoneNumber,
      cpf: cpf == freezed ? _value.cpf : cpf as CPF,
      id_confef:
          id_confef == freezed ? _value.id_confef : id_confef as IDCONFEF,
    ));
  }
}

abstract class _$AvaliadorCopyWith<$Res> implements $AvaliadorCopyWith<$Res> {
  factory _$AvaliadorCopyWith(
          _Avaliador value, $Res Function(_Avaliador) then) =
      __$AvaliadorCopyWithImpl<$Res>;
  @override
  $Res call(
      {FullName nome,
      Empresa empresa,
      WebSite site,
      EmailAddress email,
      PhoneNumber telefone,
      CPF cpf,
      IDCONFEF id_confef});
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
      nome: nome == freezed ? _value.nome : nome as FullName,
      empresa: empresa == freezed ? _value.empresa : empresa as Empresa,
      site: site == freezed ? _value.site : site as WebSite,
      email: email == freezed ? _value.email : email as EmailAddress,
      telefone: telefone == freezed ? _value.telefone : telefone as PhoneNumber,
      cpf: cpf == freezed ? _value.cpf : cpf as CPF,
      id_confef:
          id_confef == freezed ? _value.id_confef : id_confef as IDCONFEF,
    ));
  }
}

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

  @override
  final FullName nome;
  @override
  final Empresa empresa;
  @override
  final WebSite site;
  @override
  final EmailAddress email;
  @override
  final PhoneNumber telefone;
  @override
  final CPF cpf;
  @override
  final IDCONFEF id_confef;

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
}

abstract class _Avaliador extends Avaliador {
  const _Avaliador._() : super._();
  const factory _Avaliador(
      {@required FullName nome,
      Empresa empresa,
      WebSite site,
      @required EmailAddress email,
      @required PhoneNumber telefone,
      @required CPF cpf,
      @required IDCONFEF id_confef}) = _$_Avaliador;

  @override
  FullName get nome;
  @override
  Empresa get empresa;
  @override
  WebSite get site;
  @override
  EmailAddress get email;
  @override
  PhoneNumber get telefone;
  @override
  CPF get cpf;
  @override
  IDCONFEF get id_confef;
  @override
  _$AvaliadorCopyWith<_Avaliador> get copyWith;
}
