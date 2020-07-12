// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  SignedIn authCheckStarted(String token) {
    return SignedIn(
      token,
    );
  }

  SignedOut signedOut() {
    return const SignedOut();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckStarted(String token),
    @required Result signedOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckStarted(String token),
    Result signedOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckStarted(SignedIn value),
    @required Result signedOut(SignedOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckStarted(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $SignedInCopyWith<$Res> {
  factory $SignedInCopyWith(SignedIn value, $Res Function(SignedIn) then) =
      _$SignedInCopyWithImpl<$Res>;
  $Res call({String token});
}

class _$SignedInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedInCopyWith<$Res> {
  _$SignedInCopyWithImpl(SignedIn _value, $Res Function(SignedIn) _then)
      : super(_value, (v) => _then(v as SignedIn));

  @override
  SignedIn get _value => super._value as SignedIn;

  @override
  $Res call({
    Object token = freezed,
  }) {
    return _then(SignedIn(
      token == freezed ? _value.token : token as String,
    ));
  }
}

class _$SignedIn implements SignedIn {
  const _$SignedIn(this.token) : assert(token != null);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.authCheckStarted(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignedIn &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @override
  $SignedInCopyWith<SignedIn> get copyWith =>
      _$SignedInCopyWithImpl<SignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckStarted(String token),
    @required Result signedOut(),
  }) {
    assert(authCheckStarted != null);
    assert(signedOut != null);
    return authCheckStarted(token);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckStarted(String token),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckStarted != null) {
      return authCheckStarted(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckStarted(SignedIn value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(authCheckStarted != null);
    assert(signedOut != null);
    return authCheckStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckStarted(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckStarted != null) {
      return authCheckStarted(this);
    }
    return orElse();
  }
}

abstract class SignedIn implements AuthEvent {
  const factory SignedIn(String token) = _$SignedIn;

  String get token;
  $SignedInCopyWith<SignedIn> get copyWith;
}

abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckStarted(String token),
    @required Result signedOut(),
  }) {
    assert(authCheckStarted != null);
    assert(signedOut != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckStarted(String token),
    Result signedOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckStarted(SignedIn value),
    @required Result signedOut(SignedOut value),
  }) {
    assert(authCheckStarted != null);
    assert(signedOut != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckStarted(SignedIn value),
    Result signedOut(SignedOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Initial initial() {
    return const Initial();
  }

  AuthSucess authSucess() {
    return const AuthSucess();
  }

  AuthFailure authFailure() {
    return const AuthFailure();
  }

  AuthRegisterSucess authRegisterSucess() {
    return const AuthRegisterSucess();
  }

  AuthInProgress authInProgress() {
    return const AuthInProgress();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authSucess(),
    @required Result authFailure(),
    @required Result authRegisterSucess(),
    @required Result authInProgress(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authSucess(),
    Result authFailure(),
    Result authRegisterSucess(),
    Result authInProgress(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authSucess(AuthSucess value),
    @required Result authFailure(AuthFailure value),
    @required Result authRegisterSucess(AuthRegisterSucess value),
    @required Result authInProgress(AuthInProgress value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authSucess(AuthSucess value),
    Result authFailure(AuthFailure value),
    Result authRegisterSucess(AuthRegisterSucess value),
    Result authInProgress(AuthInProgress value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authSucess(),
    @required Result authFailure(),
    @required Result authRegisterSucess(),
    @required Result authInProgress(),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authSucess(),
    Result authFailure(),
    Result authRegisterSucess(),
    Result authInProgress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authSucess(AuthSucess value),
    @required Result authFailure(AuthFailure value),
    @required Result authRegisterSucess(AuthRegisterSucess value),
    @required Result authInProgress(AuthInProgress value),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authSucess(AuthSucess value),
    Result authFailure(AuthFailure value),
    Result authRegisterSucess(AuthRegisterSucess value),
    Result authInProgress(AuthInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

abstract class $AuthSucessCopyWith<$Res> {
  factory $AuthSucessCopyWith(
          AuthSucess value, $Res Function(AuthSucess) then) =
      _$AuthSucessCopyWithImpl<$Res>;
}

class _$AuthSucessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthSucessCopyWith<$Res> {
  _$AuthSucessCopyWithImpl(AuthSucess _value, $Res Function(AuthSucess) _then)
      : super(_value, (v) => _then(v as AuthSucess));

  @override
  AuthSucess get _value => super._value as AuthSucess;
}

class _$AuthSucess implements AuthSucess {
  const _$AuthSucess();

  @override
  String toString() {
    return 'AuthState.authSucess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthSucess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authSucess(),
    @required Result authFailure(),
    @required Result authRegisterSucess(),
    @required Result authInProgress(),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return authSucess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authSucess(),
    Result authFailure(),
    Result authRegisterSucess(),
    Result authInProgress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authSucess != null) {
      return authSucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authSucess(AuthSucess value),
    @required Result authFailure(AuthFailure value),
    @required Result authRegisterSucess(AuthRegisterSucess value),
    @required Result authInProgress(AuthInProgress value),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return authSucess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authSucess(AuthSucess value),
    Result authFailure(AuthFailure value),
    Result authRegisterSucess(AuthRegisterSucess value),
    Result authInProgress(AuthInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authSucess != null) {
      return authSucess(this);
    }
    return orElse();
  }
}

abstract class AuthSucess implements AuthState {
  const factory AuthSucess() = _$AuthSucess;
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(
      AuthFailure _value, $Res Function(AuthFailure) _then)
      : super(_value, (v) => _then(v as AuthFailure));

  @override
  AuthFailure get _value => super._value as AuthFailure;
}

class _$AuthFailure implements AuthFailure {
  const _$AuthFailure();

  @override
  String toString() {
    return 'AuthState.authFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authSucess(),
    @required Result authFailure(),
    @required Result authRegisterSucess(),
    @required Result authInProgress(),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return authFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authSucess(),
    Result authFailure(),
    Result authRegisterSucess(),
    Result authInProgress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authFailure != null) {
      return authFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authSucess(AuthSucess value),
    @required Result authFailure(AuthFailure value),
    @required Result authRegisterSucess(AuthRegisterSucess value),
    @required Result authInProgress(AuthInProgress value),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authSucess(AuthSucess value),
    Result authFailure(AuthFailure value),
    Result authRegisterSucess(AuthRegisterSucess value),
    Result authInProgress(AuthInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements AuthState {
  const factory AuthFailure() = _$AuthFailure;
}

abstract class $AuthRegisterSucessCopyWith<$Res> {
  factory $AuthRegisterSucessCopyWith(
          AuthRegisterSucess value, $Res Function(AuthRegisterSucess) then) =
      _$AuthRegisterSucessCopyWithImpl<$Res>;
}

class _$AuthRegisterSucessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthRegisterSucessCopyWith<$Res> {
  _$AuthRegisterSucessCopyWithImpl(
      AuthRegisterSucess _value, $Res Function(AuthRegisterSucess) _then)
      : super(_value, (v) => _then(v as AuthRegisterSucess));

  @override
  AuthRegisterSucess get _value => super._value as AuthRegisterSucess;
}

class _$AuthRegisterSucess implements AuthRegisterSucess {
  const _$AuthRegisterSucess();

  @override
  String toString() {
    return 'AuthState.authRegisterSucess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthRegisterSucess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authSucess(),
    @required Result authFailure(),
    @required Result authRegisterSucess(),
    @required Result authInProgress(),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return authRegisterSucess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authSucess(),
    Result authFailure(),
    Result authRegisterSucess(),
    Result authInProgress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authRegisterSucess != null) {
      return authRegisterSucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authSucess(AuthSucess value),
    @required Result authFailure(AuthFailure value),
    @required Result authRegisterSucess(AuthRegisterSucess value),
    @required Result authInProgress(AuthInProgress value),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return authRegisterSucess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authSucess(AuthSucess value),
    Result authFailure(AuthFailure value),
    Result authRegisterSucess(AuthRegisterSucess value),
    Result authInProgress(AuthInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authRegisterSucess != null) {
      return authRegisterSucess(this);
    }
    return orElse();
  }
}

abstract class AuthRegisterSucess implements AuthState {
  const factory AuthRegisterSucess() = _$AuthRegisterSucess;
}

abstract class $AuthInProgressCopyWith<$Res> {
  factory $AuthInProgressCopyWith(
          AuthInProgress value, $Res Function(AuthInProgress) then) =
      _$AuthInProgressCopyWithImpl<$Res>;
}

class _$AuthInProgressCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthInProgressCopyWith<$Res> {
  _$AuthInProgressCopyWithImpl(
      AuthInProgress _value, $Res Function(AuthInProgress) _then)
      : super(_value, (v) => _then(v as AuthInProgress));

  @override
  AuthInProgress get _value => super._value as AuthInProgress;
}

class _$AuthInProgress implements AuthInProgress {
  const _$AuthInProgress();

  @override
  String toString() {
    return 'AuthState.authInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authSucess(),
    @required Result authFailure(),
    @required Result authRegisterSucess(),
    @required Result authInProgress(),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return authInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authSucess(),
    Result authFailure(),
    Result authRegisterSucess(),
    Result authInProgress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authInProgress != null) {
      return authInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result authSucess(AuthSucess value),
    @required Result authFailure(AuthFailure value),
    @required Result authRegisterSucess(AuthRegisterSucess value),
    @required Result authInProgress(AuthInProgress value),
  }) {
    assert(initial != null);
    assert(authSucess != null);
    assert(authFailure != null);
    assert(authRegisterSucess != null);
    assert(authInProgress != null);
    return authInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result authSucess(AuthSucess value),
    Result authFailure(AuthFailure value),
    Result authRegisterSucess(AuthRegisterSucess value),
    Result authInProgress(AuthInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authInProgress != null) {
      return authInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthInProgress implements AuthState {
  const factory AuthInProgress() = _$AuthInProgress;
}
