// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  UserInfoChanged userInfoChanged(UserInfo<Avaliador> userInfo) {
    return UserInfoChanged(
      userInfo,
    );
  }

// ignore: unused_element
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
    @required Result userInfoChanged(UserInfo<Avaliador> userInfo),
    @required Result registerUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result userInfoChanged(UserInfo<Avaliador> userInfo),
    Result registerUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result userInfoChanged(UserInfoChanged value),
    @required Result registerUser(RegisterUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result userInfoChanged(UserInfoChanged value),
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
    @required Result userInfoChanged(UserInfo<Avaliador> userInfo),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(userInfoChanged != null);
    assert(registerUser != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result userInfoChanged(UserInfo<Avaliador> userInfo),
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
    @required Result userInfoChanged(UserInfoChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(userInfoChanged != null);
    assert(registerUser != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result userInfoChanged(UserInfoChanged value),
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
    @required Result userInfoChanged(UserInfo<Avaliador> userInfo),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(userInfoChanged != null);
    assert(registerUser != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result userInfoChanged(UserInfo<Avaliador> userInfo),
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
    @required Result userInfoChanged(UserInfoChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(userInfoChanged != null);
    assert(registerUser != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result userInfoChanged(UserInfoChanged value),
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

abstract class $UserInfoChangedCopyWith<$Res> {
  factory $UserInfoChangedCopyWith(
          UserInfoChanged value, $Res Function(UserInfoChanged) then) =
      _$UserInfoChangedCopyWithImpl<$Res>;
  $Res call({UserInfo<Avaliador> userInfo});
}

class _$UserInfoChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $UserInfoChangedCopyWith<$Res> {
  _$UserInfoChangedCopyWithImpl(
      UserInfoChanged _value, $Res Function(UserInfoChanged) _then)
      : super(_value, (v) => _then(v as UserInfoChanged));

  @override
  UserInfoChanged get _value => super._value as UserInfoChanged;

  @override
  $Res call({
    Object userInfo = freezed,
  }) {
    return _then(UserInfoChanged(
      userInfo == freezed ? _value.userInfo : userInfo as UserInfo<Avaliador>,
    ));
  }
}

class _$UserInfoChanged
    with DiagnosticableTreeMixin
    implements UserInfoChanged {
  const _$UserInfoChanged(this.userInfo) : assert(userInfo != null);

  @override
  final UserInfo<Avaliador> userInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.userInfoChanged(userInfo: $userInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.userInfoChanged'))
      ..add(DiagnosticsProperty('userInfo', userInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserInfoChanged &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userInfo);

  @override
  $UserInfoChangedCopyWith<UserInfoChanged> get copyWith =>
      _$UserInfoChangedCopyWithImpl<UserInfoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result userInfoChanged(UserInfo<Avaliador> userInfo),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(userInfoChanged != null);
    assert(registerUser != null);
    return userInfoChanged(userInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result userInfoChanged(UserInfo<Avaliador> userInfo),
    Result registerUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userInfoChanged != null) {
      return userInfoChanged(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result userInfoChanged(UserInfoChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(userInfoChanged != null);
    assert(registerUser != null);
    return userInfoChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result userInfoChanged(UserInfoChanged value),
    Result registerUser(RegisterUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userInfoChanged != null) {
      return userInfoChanged(this);
    }
    return orElse();
  }
}

abstract class UserInfoChanged implements RegisterEvent {
  const factory UserInfoChanged(UserInfo<Avaliador> userInfo) =
      _$UserInfoChanged;

  UserInfo<Avaliador> get userInfo;
  $UserInfoChangedCopyWith<UserInfoChanged> get copyWith;
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
    @required Result userInfoChanged(UserInfo<Avaliador> userInfo),
    @required Result registerUser(),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(userInfoChanged != null);
    assert(registerUser != null);
    return registerUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result userInfoChanged(UserInfo<Avaliador> userInfo),
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
    @required Result userInfoChanged(UserInfoChanged value),
    @required Result registerUser(RegisterUser value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(userInfoChanged != null);
    assert(registerUser != null);
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result userInfoChanged(UserInfoChanged value),
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

// ignore: unused_element
  _RegisterState call(
      {@required User user,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) {
    return _RegisterState(
      user: user,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailOrSucessOption: authFailOrSucessOption,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  User get user;
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
      {User user,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailOrSucessOption});

  $UserCopyWith<$Res> get user;
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object user = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailOrSucessOption = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
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

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailOrSucessOption});

  @override
  $UserCopyWith<$Res> get user;
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
    Object user = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailOrSucessOption = freezed,
  }) {
    return _then(_RegisterState(
      user: user == freezed ? _value.user : user as User,
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
      {@required this.user,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailOrSucessOption})
      : assert(user != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailOrSucessOption != null);

  @override
  final User user;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailOrSucessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState(user: $user, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailOrSucessOption: $authFailOrSucessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailOrSucessOption', authFailOrSucessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
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
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailOrSucessOption);

  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
          {@required User user,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) =
      _$_RegisterState;

  @override
  User get user;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailOrSucessOption;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}
