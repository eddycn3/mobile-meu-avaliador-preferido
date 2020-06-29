// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  CpfAlredyInUse cpfAlredyInUse() {
    return const CpfAlredyInUse();
  }

  IdConfefAlredyInUse idConfefAlredyInUse() {
    return const IdConfefAlredyInUse();
  }

  EmailAlredyInUse emailAlredyInUse() {
    return const EmailAlredyInUse();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cpfAlredyInUse(),
    @required Result idConfefAlredyInUse(),
    @required Result emailAlredyInUse(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cpfAlredyInUse(),
    Result idConfefAlredyInUse(),
    Result emailAlredyInUse(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cpfAlredyInUse(CpfAlredyInUse value),
    @required Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    @required Result emailAlredyInUse(EmailAlredyInUse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cpfAlredyInUse(CpfAlredyInUse value),
    Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    Result emailAlredyInUse(EmailAlredyInUse value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cpfAlredyInUse(),
    @required Result idConfefAlredyInUse(),
    @required Result emailAlredyInUse(),
  }) {
    assert(serverError != null);
    assert(cpfAlredyInUse != null);
    assert(idConfefAlredyInUse != null);
    assert(emailAlredyInUse != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cpfAlredyInUse(),
    Result idConfefAlredyInUse(),
    Result emailAlredyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cpfAlredyInUse(CpfAlredyInUse value),
    @required Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    @required Result emailAlredyInUse(EmailAlredyInUse value),
  }) {
    assert(serverError != null);
    assert(cpfAlredyInUse != null);
    assert(idConfefAlredyInUse != null);
    assert(emailAlredyInUse != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cpfAlredyInUse(CpfAlredyInUse value),
    Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    Result emailAlredyInUse(EmailAlredyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

abstract class $CpfAlredyInUseCopyWith<$Res> {
  factory $CpfAlredyInUseCopyWith(
          CpfAlredyInUse value, $Res Function(CpfAlredyInUse) then) =
      _$CpfAlredyInUseCopyWithImpl<$Res>;
}

class _$CpfAlredyInUseCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $CpfAlredyInUseCopyWith<$Res> {
  _$CpfAlredyInUseCopyWithImpl(
      CpfAlredyInUse _value, $Res Function(CpfAlredyInUse) _then)
      : super(_value, (v) => _then(v as CpfAlredyInUse));

  @override
  CpfAlredyInUse get _value => super._value as CpfAlredyInUse;
}

class _$CpfAlredyInUse implements CpfAlredyInUse {
  const _$CpfAlredyInUse();

  @override
  String toString() {
    return 'AuthFailure.cpfAlredyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CpfAlredyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cpfAlredyInUse(),
    @required Result idConfefAlredyInUse(),
    @required Result emailAlredyInUse(),
  }) {
    assert(serverError != null);
    assert(cpfAlredyInUse != null);
    assert(idConfefAlredyInUse != null);
    assert(emailAlredyInUse != null);
    return cpfAlredyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cpfAlredyInUse(),
    Result idConfefAlredyInUse(),
    Result emailAlredyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cpfAlredyInUse != null) {
      return cpfAlredyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cpfAlredyInUse(CpfAlredyInUse value),
    @required Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    @required Result emailAlredyInUse(EmailAlredyInUse value),
  }) {
    assert(serverError != null);
    assert(cpfAlredyInUse != null);
    assert(idConfefAlredyInUse != null);
    assert(emailAlredyInUse != null);
    return cpfAlredyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cpfAlredyInUse(CpfAlredyInUse value),
    Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    Result emailAlredyInUse(EmailAlredyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cpfAlredyInUse != null) {
      return cpfAlredyInUse(this);
    }
    return orElse();
  }
}

abstract class CpfAlredyInUse implements AuthFailure {
  const factory CpfAlredyInUse() = _$CpfAlredyInUse;
}

abstract class $IdConfefAlredyInUseCopyWith<$Res> {
  factory $IdConfefAlredyInUseCopyWith(
          IdConfefAlredyInUse value, $Res Function(IdConfefAlredyInUse) then) =
      _$IdConfefAlredyInUseCopyWithImpl<$Res>;
}

class _$IdConfefAlredyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $IdConfefAlredyInUseCopyWith<$Res> {
  _$IdConfefAlredyInUseCopyWithImpl(
      IdConfefAlredyInUse _value, $Res Function(IdConfefAlredyInUse) _then)
      : super(_value, (v) => _then(v as IdConfefAlredyInUse));

  @override
  IdConfefAlredyInUse get _value => super._value as IdConfefAlredyInUse;
}

class _$IdConfefAlredyInUse implements IdConfefAlredyInUse {
  const _$IdConfefAlredyInUse();

  @override
  String toString() {
    return 'AuthFailure.idConfefAlredyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IdConfefAlredyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cpfAlredyInUse(),
    @required Result idConfefAlredyInUse(),
    @required Result emailAlredyInUse(),
  }) {
    assert(serverError != null);
    assert(cpfAlredyInUse != null);
    assert(idConfefAlredyInUse != null);
    assert(emailAlredyInUse != null);
    return idConfefAlredyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cpfAlredyInUse(),
    Result idConfefAlredyInUse(),
    Result emailAlredyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idConfefAlredyInUse != null) {
      return idConfefAlredyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cpfAlredyInUse(CpfAlredyInUse value),
    @required Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    @required Result emailAlredyInUse(EmailAlredyInUse value),
  }) {
    assert(serverError != null);
    assert(cpfAlredyInUse != null);
    assert(idConfefAlredyInUse != null);
    assert(emailAlredyInUse != null);
    return idConfefAlredyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cpfAlredyInUse(CpfAlredyInUse value),
    Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    Result emailAlredyInUse(EmailAlredyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idConfefAlredyInUse != null) {
      return idConfefAlredyInUse(this);
    }
    return orElse();
  }
}

abstract class IdConfefAlredyInUse implements AuthFailure {
  const factory IdConfefAlredyInUse() = _$IdConfefAlredyInUse;
}

abstract class $EmailAlredyInUseCopyWith<$Res> {
  factory $EmailAlredyInUseCopyWith(
          EmailAlredyInUse value, $Res Function(EmailAlredyInUse) then) =
      _$EmailAlredyInUseCopyWithImpl<$Res>;
}

class _$EmailAlredyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlredyInUseCopyWith<$Res> {
  _$EmailAlredyInUseCopyWithImpl(
      EmailAlredyInUse _value, $Res Function(EmailAlredyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlredyInUse));

  @override
  EmailAlredyInUse get _value => super._value as EmailAlredyInUse;
}

class _$EmailAlredyInUse implements EmailAlredyInUse {
  const _$EmailAlredyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlredyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlredyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(),
    @required Result cpfAlredyInUse(),
    @required Result idConfefAlredyInUse(),
    @required Result emailAlredyInUse(),
  }) {
    assert(serverError != null);
    assert(cpfAlredyInUse != null);
    assert(idConfefAlredyInUse != null);
    assert(emailAlredyInUse != null);
    return emailAlredyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(),
    Result cpfAlredyInUse(),
    Result idConfefAlredyInUse(),
    Result emailAlredyInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlredyInUse != null) {
      return emailAlredyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(ServerError value),
    @required Result cpfAlredyInUse(CpfAlredyInUse value),
    @required Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    @required Result emailAlredyInUse(EmailAlredyInUse value),
  }) {
    assert(serverError != null);
    assert(cpfAlredyInUse != null);
    assert(idConfefAlredyInUse != null);
    assert(emailAlredyInUse != null);
    return emailAlredyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(ServerError value),
    Result cpfAlredyInUse(CpfAlredyInUse value),
    Result idConfefAlredyInUse(IdConfefAlredyInUse value),
    Result emailAlredyInUse(EmailAlredyInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlredyInUse != null) {
      return emailAlredyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlredyInUse implements AuthFailure {
  const factory EmailAlredyInUse() = _$EmailAlredyInUse;
}
