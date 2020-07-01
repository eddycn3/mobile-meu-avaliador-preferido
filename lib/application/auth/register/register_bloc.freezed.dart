// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  NomeUsuarioChanged nomeUsuarioChanged(String nomeUsuario) {
    return NomeUsuarioChanged(
      nomeUsuario,
    );
  }

  TelefoneChanged telefoneChanged(String telefone) {
    return TelefoneChanged(
      telefone,
    );
  }

  CpfChanged cpfChanged(String cpf) {
    return CpfChanged(
      cpf,
    );
  }

  IdConfefChanged idConfefChanged(String idconfef) {
    return IdConfefChanged(
      idconfef,
    );
  }

  RegisterUser registerUser() {
    return const RegisterUser();
  }
}

// ignore: unused_element
const $RegisterEvent = _$RegisterEventTearOff();

mixin _$RegisterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result nomeUsuarioChanged(String nomeUsuario),
    @required Result telefoneChanged(String telefone),
    @required Result cpfChanged(String cpf),
    @required Result idConfefChanged(String idconfef),
    @required Result registerUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result nomeUsuarioChanged(String nomeUsuario),
    Result telefoneChanged(String telefone),
    Result cpfChanged(String cpf),
    Result idConfefChanged(String idconfef),
    Result registerUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result nomeUsuarioChanged(NomeUsuarioChanged value),
    @required Result telefoneChanged(TelefoneChanged value),
    @required Result cpfChanged(CpfChanged value),
    @required Result idConfefChanged(IdConfefChanged value),
    @required Result registerUser(RegisterUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result nomeUsuarioChanged(NomeUsuarioChanged value),
    Result telefoneChanged(TelefoneChanged value),
    Result cpfChanged(CpfChanged value),
    Result idConfefChanged(IdConfefChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  });
}

abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

class _$EmailChanged with DiagnosticableTreeMixin implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result nomeUsuarioChanged(String nomeUsuario),
    @required Result telefoneChanged(String telefone),
    @required Result cpfChanged(String cpf),
    @required Result idConfefChanged(String idconfef),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result nomeUsuarioChanged(String nomeUsuario),
    Result telefoneChanged(String telefone),
    Result cpfChanged(String cpf),
    Result idConfefChanged(String idconfef),
    Result registerUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result nomeUsuarioChanged(NomeUsuarioChanged value),
    @required Result telefoneChanged(TelefoneChanged value),
    @required Result cpfChanged(CpfChanged value),
    @required Result idConfefChanged(IdConfefChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result nomeUsuarioChanged(NomeUsuarioChanged value),
    Result telefoneChanged(TelefoneChanged value),
    Result cpfChanged(CpfChanged value),
    Result idConfefChanged(IdConfefChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result nomeUsuarioChanged(String nomeUsuario),
    @required Result telefoneChanged(String telefone),
    @required Result cpfChanged(String cpf),
    @required Result idConfefChanged(String idconfef),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result nomeUsuarioChanged(String nomeUsuario),
    Result telefoneChanged(String telefone),
    Result cpfChanged(String cpf),
    Result idConfefChanged(String idconfef),
    Result registerUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result nomeUsuarioChanged(NomeUsuarioChanged value),
    @required Result telefoneChanged(TelefoneChanged value),
    @required Result cpfChanged(CpfChanged value),
    @required Result idConfefChanged(IdConfefChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result nomeUsuarioChanged(NomeUsuarioChanged value),
    Result telefoneChanged(TelefoneChanged value),
    Result cpfChanged(CpfChanged value),
    Result idConfefChanged(IdConfefChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $NomeUsuarioChangedCopyWith<$Res> {
  factory $NomeUsuarioChangedCopyWith(
          NomeUsuarioChanged value, $Res Function(NomeUsuarioChanged) then) =
      _$NomeUsuarioChangedCopyWithImpl<$Res>;
  $Res call({String nomeUsuario});
}

class _$NomeUsuarioChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $NomeUsuarioChangedCopyWith<$Res> {
  _$NomeUsuarioChangedCopyWithImpl(
      NomeUsuarioChanged _value, $Res Function(NomeUsuarioChanged) _then)
      : super(_value, (v) => _then(v as NomeUsuarioChanged));

  @override
  NomeUsuarioChanged get _value => super._value as NomeUsuarioChanged;

  @override
  $Res call({
    Object nomeUsuario = freezed,
  }) {
    return _then(NomeUsuarioChanged(
      nomeUsuario == freezed ? _value.nomeUsuario : nomeUsuario as String,
    ));
  }
}

class _$NomeUsuarioChanged
    with DiagnosticableTreeMixin
    implements NomeUsuarioChanged {
  const _$NomeUsuarioChanged(this.nomeUsuario) : assert(nomeUsuario != null);

  @override
  final String nomeUsuario;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.nomeUsuarioChanged(nomeUsuario: $nomeUsuario)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.nomeUsuarioChanged'))
      ..add(DiagnosticsProperty('nomeUsuario', nomeUsuario));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NomeUsuarioChanged &&
            (identical(other.nomeUsuario, nomeUsuario) ||
                const DeepCollectionEquality()
                    .equals(other.nomeUsuario, nomeUsuario)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nomeUsuario);

  @override
  $NomeUsuarioChangedCopyWith<NomeUsuarioChanged> get copyWith =>
      _$NomeUsuarioChangedCopyWithImpl<NomeUsuarioChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result nomeUsuarioChanged(String nomeUsuario),
    @required Result telefoneChanged(String telefone),
    @required Result cpfChanged(String cpf),
    @required Result idConfefChanged(String idconfef),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return nomeUsuarioChanged(nomeUsuario);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result nomeUsuarioChanged(String nomeUsuario),
    Result telefoneChanged(String telefone),
    Result cpfChanged(String cpf),
    Result idConfefChanged(String idconfef),
    Result registerUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nomeUsuarioChanged != null) {
      return nomeUsuarioChanged(nomeUsuario);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result nomeUsuarioChanged(NomeUsuarioChanged value),
    @required Result telefoneChanged(TelefoneChanged value),
    @required Result cpfChanged(CpfChanged value),
    @required Result idConfefChanged(IdConfefChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return nomeUsuarioChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result nomeUsuarioChanged(NomeUsuarioChanged value),
    Result telefoneChanged(TelefoneChanged value),
    Result cpfChanged(CpfChanged value),
    Result idConfefChanged(IdConfefChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nomeUsuarioChanged != null) {
      return nomeUsuarioChanged(this);
    }
    return orElse();
  }
}

abstract class NomeUsuarioChanged implements RegisterEvent {
  const factory NomeUsuarioChanged(String nomeUsuario) = _$NomeUsuarioChanged;

  String get nomeUsuario;
  $NomeUsuarioChangedCopyWith<NomeUsuarioChanged> get copyWith;
}

abstract class $TelefoneChangedCopyWith<$Res> {
  factory $TelefoneChangedCopyWith(
          TelefoneChanged value, $Res Function(TelefoneChanged) then) =
      _$TelefoneChangedCopyWithImpl<$Res>;
  $Res call({String telefone});
}

class _$TelefoneChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $TelefoneChangedCopyWith<$Res> {
  _$TelefoneChangedCopyWithImpl(
      TelefoneChanged _value, $Res Function(TelefoneChanged) _then)
      : super(_value, (v) => _then(v as TelefoneChanged));

  @override
  TelefoneChanged get _value => super._value as TelefoneChanged;

  @override
  $Res call({
    Object telefone = freezed,
  }) {
    return _then(TelefoneChanged(
      telefone == freezed ? _value.telefone : telefone as String,
    ));
  }
}

class _$TelefoneChanged
    with DiagnosticableTreeMixin
    implements TelefoneChanged {
  const _$TelefoneChanged(this.telefone) : assert(telefone != null);

  @override
  final String telefone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.telefoneChanged(telefone: $telefone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.telefoneChanged'))
      ..add(DiagnosticsProperty('telefone', telefone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TelefoneChanged &&
            (identical(other.telefone, telefone) ||
                const DeepCollectionEquality()
                    .equals(other.telefone, telefone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(telefone);

  @override
  $TelefoneChangedCopyWith<TelefoneChanged> get copyWith =>
      _$TelefoneChangedCopyWithImpl<TelefoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result nomeUsuarioChanged(String nomeUsuario),
    @required Result telefoneChanged(String telefone),
    @required Result cpfChanged(String cpf),
    @required Result idConfefChanged(String idconfef),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return telefoneChanged(telefone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result nomeUsuarioChanged(String nomeUsuario),
    Result telefoneChanged(String telefone),
    Result cpfChanged(String cpf),
    Result idConfefChanged(String idconfef),
    Result registerUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (telefoneChanged != null) {
      return telefoneChanged(telefone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result nomeUsuarioChanged(NomeUsuarioChanged value),
    @required Result telefoneChanged(TelefoneChanged value),
    @required Result cpfChanged(CpfChanged value),
    @required Result idConfefChanged(IdConfefChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return telefoneChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result nomeUsuarioChanged(NomeUsuarioChanged value),
    Result telefoneChanged(TelefoneChanged value),
    Result cpfChanged(CpfChanged value),
    Result idConfefChanged(IdConfefChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (telefoneChanged != null) {
      return telefoneChanged(this);
    }
    return orElse();
  }
}

abstract class TelefoneChanged implements RegisterEvent {
  const factory TelefoneChanged(String telefone) = _$TelefoneChanged;

  String get telefone;
  $TelefoneChangedCopyWith<TelefoneChanged> get copyWith;
}

abstract class $CpfChangedCopyWith<$Res> {
  factory $CpfChangedCopyWith(
          CpfChanged value, $Res Function(CpfChanged) then) =
      _$CpfChangedCopyWithImpl<$Res>;
  $Res call({String cpf});
}

class _$CpfChangedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $CpfChangedCopyWith<$Res> {
  _$CpfChangedCopyWithImpl(CpfChanged _value, $Res Function(CpfChanged) _then)
      : super(_value, (v) => _then(v as CpfChanged));

  @override
  CpfChanged get _value => super._value as CpfChanged;

  @override
  $Res call({
    Object cpf = freezed,
  }) {
    return _then(CpfChanged(
      cpf == freezed ? _value.cpf : cpf as String,
    ));
  }
}

class _$CpfChanged with DiagnosticableTreeMixin implements CpfChanged {
  const _$CpfChanged(this.cpf) : assert(cpf != null);

  @override
  final String cpf;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.cpfChanged(cpf: $cpf)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.cpfChanged'))
      ..add(DiagnosticsProperty('cpf', cpf));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CpfChanged &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cpf);

  @override
  $CpfChangedCopyWith<CpfChanged> get copyWith =>
      _$CpfChangedCopyWithImpl<CpfChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result nomeUsuarioChanged(String nomeUsuario),
    @required Result telefoneChanged(String telefone),
    @required Result cpfChanged(String cpf),
    @required Result idConfefChanged(String idconfef),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return cpfChanged(cpf);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result nomeUsuarioChanged(String nomeUsuario),
    Result telefoneChanged(String telefone),
    Result cpfChanged(String cpf),
    Result idConfefChanged(String idconfef),
    Result registerUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cpfChanged != null) {
      return cpfChanged(cpf);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result nomeUsuarioChanged(NomeUsuarioChanged value),
    @required Result telefoneChanged(TelefoneChanged value),
    @required Result cpfChanged(CpfChanged value),
    @required Result idConfefChanged(IdConfefChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return cpfChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result nomeUsuarioChanged(NomeUsuarioChanged value),
    Result telefoneChanged(TelefoneChanged value),
    Result cpfChanged(CpfChanged value),
    Result idConfefChanged(IdConfefChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cpfChanged != null) {
      return cpfChanged(this);
    }
    return orElse();
  }
}

abstract class CpfChanged implements RegisterEvent {
  const factory CpfChanged(String cpf) = _$CpfChanged;

  String get cpf;
  $CpfChangedCopyWith<CpfChanged> get copyWith;
}

abstract class $IdConfefChangedCopyWith<$Res> {
  factory $IdConfefChangedCopyWith(
          IdConfefChanged value, $Res Function(IdConfefChanged) then) =
      _$IdConfefChangedCopyWithImpl<$Res>;
  $Res call({String idconfef});
}

class _$IdConfefChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $IdConfefChangedCopyWith<$Res> {
  _$IdConfefChangedCopyWithImpl(
      IdConfefChanged _value, $Res Function(IdConfefChanged) _then)
      : super(_value, (v) => _then(v as IdConfefChanged));

  @override
  IdConfefChanged get _value => super._value as IdConfefChanged;

  @override
  $Res call({
    Object idconfef = freezed,
  }) {
    return _then(IdConfefChanged(
      idconfef == freezed ? _value.idconfef : idconfef as String,
    ));
  }
}

class _$IdConfefChanged
    with DiagnosticableTreeMixin
    implements IdConfefChanged {
  const _$IdConfefChanged(this.idconfef) : assert(idconfef != null);

  @override
  final String idconfef;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.idConfefChanged(idconfef: $idconfef)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.idConfefChanged'))
      ..add(DiagnosticsProperty('idconfef', idconfef));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IdConfefChanged &&
            (identical(other.idconfef, idconfef) ||
                const DeepCollectionEquality()
                    .equals(other.idconfef, idconfef)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(idconfef);

  @override
  $IdConfefChangedCopyWith<IdConfefChanged> get copyWith =>
      _$IdConfefChangedCopyWithImpl<IdConfefChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result nomeUsuarioChanged(String nomeUsuario),
    @required Result telefoneChanged(String telefone),
    @required Result cpfChanged(String cpf),
    @required Result idConfefChanged(String idconfef),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return idConfefChanged(idconfef);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result nomeUsuarioChanged(String nomeUsuario),
    Result telefoneChanged(String telefone),
    Result cpfChanged(String cpf),
    Result idConfefChanged(String idconfef),
    Result registerUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idConfefChanged != null) {
      return idConfefChanged(idconfef);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result nomeUsuarioChanged(NomeUsuarioChanged value),
    @required Result telefoneChanged(TelefoneChanged value),
    @required Result cpfChanged(CpfChanged value),
    @required Result idConfefChanged(IdConfefChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return idConfefChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result nomeUsuarioChanged(NomeUsuarioChanged value),
    Result telefoneChanged(TelefoneChanged value),
    Result cpfChanged(CpfChanged value),
    Result idConfefChanged(IdConfefChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idConfefChanged != null) {
      return idConfefChanged(this);
    }
    return orElse();
  }
}

abstract class IdConfefChanged implements RegisterEvent {
  const factory IdConfefChanged(String idconfef) = _$IdConfefChanged;

  String get idconfef;
  $IdConfefChangedCopyWith<IdConfefChanged> get copyWith;
}

abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
}

class _$RegisterUserCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(
      RegisterUser _value, $Res Function(RegisterUser) _then)
      : super(_value, (v) => _then(v as RegisterUser));

  @override
  RegisterUser get _value => super._value as RegisterUser;
}

class _$RegisterUser with DiagnosticableTreeMixin implements RegisterUser {
  const _$RegisterUser();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.registerUser()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RegisterEvent.registerUser'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result nomeUsuarioChanged(String nomeUsuario),
    @required Result telefoneChanged(String telefone),
    @required Result cpfChanged(String cpf),
    @required Result idConfefChanged(String idconfef),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return registerUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result nomeUsuarioChanged(String nomeUsuario),
    Result telefoneChanged(String telefone),
    Result cpfChanged(String cpf),
    Result idConfefChanged(String idconfef),
    Result registerUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result nomeUsuarioChanged(NomeUsuarioChanged value),
    @required Result telefoneChanged(TelefoneChanged value),
    @required Result cpfChanged(CpfChanged value),
    @required Result idConfefChanged(IdConfefChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(nomeUsuarioChanged != null);
    assert(telefoneChanged != null);
    assert(cpfChanged != null);
    assert(idConfefChanged != null);
    assert(registerUser != null);
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result nomeUsuarioChanged(NomeUsuarioChanged value),
    Result telefoneChanged(TelefoneChanged value),
    Result cpfChanged(CpfChanged value),
    Result idConfefChanged(IdConfefChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements RegisterEvent {
  const factory RegisterUser() = _$RegisterUser;
}

class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required NomeUsuario nome,
      String empresa,
      String site,
      @required Telefone telefone,
      @required CPF cpf,
      @required IDCONFEF idconfef,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) {
    return _RegisterState(
      emailAddress: emailAddress,
      password: password,
      nome: nome,
      empresa: empresa,
      site: site,
      telefone: telefone,
      cpf: cpf,
      idconfef: idconfef,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailOrSucessOption: authFailOrSucessOption,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  EmailAddress get emailAddress;
  Password get password;
  NomeUsuario get nome;
  String get empresa;
  String get site;
  Telefone get telefone;
  CPF get cpf;
  IDCONFEF get idconfef;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailOrSucessOption;

  $RegisterStateCopyWith<RegisterState> get copyWith;
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      NomeUsuario nome,
      String empresa,
      String site,
      Telefone telefone,
      CPF cpf,
      IDCONFEF idconfef,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailOrSucessOption});
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object nome = freezed,
    Object empresa = freezed,
    Object site = freezed,
    Object telefone = freezed,
    Object cpf = freezed,
    Object idconfef = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailOrSucessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      nome: nome == freezed ? _value.nome : nome as NomeUsuario,
      empresa: empresa == freezed ? _value.empresa : empresa as String,
      site: site == freezed ? _value.site : site as String,
      telefone: telefone == freezed ? _value.telefone : telefone as Telefone,
      cpf: cpf == freezed ? _value.cpf : cpf as CPF,
      idconfef: idconfef == freezed ? _value.idconfef : idconfef as IDCONFEF,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailOrSucessOption: authFailOrSucessOption == freezed
          ? _value.authFailOrSucessOption
          : authFailOrSucessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      NomeUsuario nome,
      String empresa,
      String site,
      Telefone telefone,
      CPF cpf,
      IDCONFEF idconfef,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailOrSucessOption});
}

class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object nome = freezed,
    Object empresa = freezed,
    Object site = freezed,
    Object telefone = freezed,
    Object cpf = freezed,
    Object idconfef = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailOrSucessOption = freezed,
  }) {
    return _then(_RegisterState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      nome: nome == freezed ? _value.nome : nome as NomeUsuario,
      empresa: empresa == freezed ? _value.empresa : empresa as String,
      site: site == freezed ? _value.site : site as String,
      telefone: telefone == freezed ? _value.telefone : telefone as Telefone,
      cpf: cpf == freezed ? _value.cpf : cpf as CPF,
      idconfef: idconfef == freezed ? _value.idconfef : idconfef as IDCONFEF,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailOrSucessOption: authFailOrSucessOption == freezed
          ? _value.authFailOrSucessOption
          : authFailOrSucessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_RegisterState with DiagnosticableTreeMixin implements _RegisterState {
  const _$_RegisterState(
      {@required this.emailAddress,
      @required this.password,
      @required this.nome,
      this.empresa,
      this.site,
      @required this.telefone,
      @required this.cpf,
      @required this.idconfef,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailOrSucessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(nome != null),
        assert(telefone != null),
        assert(cpf != null),
        assert(idconfef != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailOrSucessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final NomeUsuario nome;
  @override
  final String empresa;
  @override
  final String site;
  @override
  final Telefone telefone;
  @override
  final CPF cpf;
  @override
  final IDCONFEF idconfef;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailOrSucessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState(emailAddress: $emailAddress, password: $password, nome: $nome, empresa: $empresa, site: $site, telefone: $telefone, cpf: $cpf, idconfef: $idconfef, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailOrSucessOption: $authFailOrSucessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('nome', nome))
      ..add(DiagnosticsProperty('empresa', empresa))
      ..add(DiagnosticsProperty('site', site))
      ..add(DiagnosticsProperty('telefone', telefone))
      ..add(DiagnosticsProperty('cpf', cpf))
      ..add(DiagnosticsProperty('idconfef', idconfef))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailOrSucessOption', authFailOrSucessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.nome, nome) ||
                const DeepCollectionEquality().equals(other.nome, nome)) &&
            (identical(other.empresa, empresa) ||
                const DeepCollectionEquality()
                    .equals(other.empresa, empresa)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.telefone, telefone) ||
                const DeepCollectionEquality()
                    .equals(other.telefone, telefone)) &&
            (identical(other.cpf, cpf) ||
                const DeepCollectionEquality().equals(other.cpf, cpf)) &&
            (identical(other.idconfef, idconfef) ||
                const DeepCollectionEquality()
                    .equals(other.idconfef, idconfef)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailOrSucessOption, authFailOrSucessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailOrSucessOption, authFailOrSucessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(nome) ^
      const DeepCollectionEquality().hash(empresa) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(telefone) ^
      const DeepCollectionEquality().hash(cpf) ^
      const DeepCollectionEquality().hash(idconfef) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailOrSucessOption);

  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
          {@required EmailAddress emailAddress,
          @required Password password,
          @required NomeUsuario nome,
          String empresa,
          String site,
          @required Telefone telefone,
          @required CPF cpf,
          @required IDCONFEF idconfef,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) =
      _$_RegisterState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  NomeUsuario get nome;
  @override
  String get empresa;
  @override
  String get site;
  @override
  Telefone get telefone;
  @override
  CPF get cpf;
  @override
  IDCONFEF get idconfef;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailOrSucessOption;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}
