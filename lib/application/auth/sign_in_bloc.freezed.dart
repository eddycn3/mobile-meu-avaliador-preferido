// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInEventTearOff {
  const _$SignInEventTearOff();

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

  SignInWithEmailAndPassword signInWithEmailAndPassword() {
    return const SignInWithEmailAndPassword();
  }

  RegisterWithEmailAndPassword registerWithEmailAndPassword(String password) {
    return RegisterWithEmailAndPassword(
      password,
    );
  }

  GoogleSignInWithEmailAndPassword googleSignInWithEmailAndPassword(
      String password) {
    return GoogleSignInWithEmailAndPassword(
      password,
    );
  }
}

// ignore: unused_element
const $SignInEvent = _$SignInEventTearOff();

mixin _$SignInEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signInWithEmailAndPassword(),
    @required Result registerWithEmailAndPassword(String password),
    @required Result googleSignInWithEmailAndPassword(String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signInWithEmailAndPassword(),
    Result registerWithEmailAndPassword(String password),
    Result googleSignInWithEmailAndPassword(String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required
        Result googleSignInWithEmailAndPassword(
            GoogleSignInWithEmailAndPassword value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result googleSignInWithEmailAndPassword(
        GoogleSignInWithEmailAndPassword value),
    @required Result orElse(),
  });
}

abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
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

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(email: $email)';
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
    @required Result signInWithEmailAndPassword(),
    @required Result registerWithEmailAndPassword(String password),
    @required Result googleSignInWithEmailAndPassword(String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signInWithEmailAndPassword(),
    Result registerWithEmailAndPassword(String password),
    Result googleSignInWithEmailAndPassword(String password),
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
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required
        Result googleSignInWithEmailAndPassword(
            GoogleSignInWithEmailAndPassword value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result googleSignInWithEmailAndPassword(
        GoogleSignInWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
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
    extends _$SignInEventCopyWithImpl<$Res>
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

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(password: $password)';
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
    @required Result signInWithEmailAndPassword(),
    @required Result registerWithEmailAndPassword(String password),
    @required Result googleSignInWithEmailAndPassword(String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signInWithEmailAndPassword(),
    Result registerWithEmailAndPassword(String password),
    Result googleSignInWithEmailAndPassword(String password),
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
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required
        Result googleSignInWithEmailAndPassword(
            GoogleSignInWithEmailAndPassword value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result googleSignInWithEmailAndPassword(
        GoogleSignInWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $SignInWithEmailAndPasswordCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordCopyWith(SignInWithEmailAndPassword value,
          $Res Function(SignInWithEmailAndPassword) then) =
      _$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

class _$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordCopyWith<$Res> {
  _$SignInWithEmailAndPasswordCopyWithImpl(SignInWithEmailAndPassword _value,
      $Res Function(SignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPassword));

  @override
  SignInWithEmailAndPassword get _value =>
      super._value as SignInWithEmailAndPassword;
}

class _$SignInWithEmailAndPassword implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'SignInEvent.signInWithEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signInWithEmailAndPassword(),
    @required Result registerWithEmailAndPassword(String password),
    @required Result googleSignInWithEmailAndPassword(String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return signInWithEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signInWithEmailAndPassword(),
    Result registerWithEmailAndPassword(String password),
    Result googleSignInWithEmailAndPassword(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required
        Result googleSignInWithEmailAndPassword(
            GoogleSignInWithEmailAndPassword value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return signInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result googleSignInWithEmailAndPassword(
        GoogleSignInWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPassword != null) {
      return signInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements SignInEvent {
  const factory SignInWithEmailAndPassword() = _$SignInWithEmailAndPassword;
}

abstract class $RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordCopyWith(
          RegisterWithEmailAndPassword value,
          $Res Function(RegisterWithEmailAndPassword) then) =
      _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordCopyWithImpl(
      RegisterWithEmailAndPassword _value,
      $Res Function(RegisterWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPassword));

  @override
  RegisterWithEmailAndPassword get _value =>
      super._value as RegisterWithEmailAndPassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(RegisterWithEmailAndPassword(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$RegisterWithEmailAndPassword implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPassword(this.password)
      : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.registerWithEmailAndPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $RegisterWithEmailAndPasswordCopyWith<RegisterWithEmailAndPassword>
      get copyWith => _$RegisterWithEmailAndPasswordCopyWithImpl<
          RegisterWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signInWithEmailAndPassword(),
    @required Result registerWithEmailAndPassword(String password),
    @required Result googleSignInWithEmailAndPassword(String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return registerWithEmailAndPassword(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signInWithEmailAndPassword(),
    Result registerWithEmailAndPassword(String password),
    Result googleSignInWithEmailAndPassword(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required
        Result googleSignInWithEmailAndPassword(
            GoogleSignInWithEmailAndPassword value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return registerWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result googleSignInWithEmailAndPassword(
        GoogleSignInWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPassword != null) {
      return registerWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements SignInEvent {
  const factory RegisterWithEmailAndPassword(String password) =
      _$RegisterWithEmailAndPassword;

  String get password;
  $RegisterWithEmailAndPasswordCopyWith<RegisterWithEmailAndPassword>
      get copyWith;
}

abstract class $GoogleSignInWithEmailAndPasswordCopyWith<$Res> {
  factory $GoogleSignInWithEmailAndPasswordCopyWith(
          GoogleSignInWithEmailAndPassword value,
          $Res Function(GoogleSignInWithEmailAndPassword) then) =
      _$GoogleSignInWithEmailAndPasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$GoogleSignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $GoogleSignInWithEmailAndPasswordCopyWith<$Res> {
  _$GoogleSignInWithEmailAndPasswordCopyWithImpl(
      GoogleSignInWithEmailAndPassword _value,
      $Res Function(GoogleSignInWithEmailAndPassword) _then)
      : super(_value, (v) => _then(v as GoogleSignInWithEmailAndPassword));

  @override
  GoogleSignInWithEmailAndPassword get _value =>
      super._value as GoogleSignInWithEmailAndPassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(GoogleSignInWithEmailAndPassword(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$GoogleSignInWithEmailAndPassword
    implements GoogleSignInWithEmailAndPassword {
  const _$GoogleSignInWithEmailAndPassword(this.password)
      : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.googleSignInWithEmailAndPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GoogleSignInWithEmailAndPassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $GoogleSignInWithEmailAndPasswordCopyWith<GoogleSignInWithEmailAndPassword>
      get copyWith => _$GoogleSignInWithEmailAndPasswordCopyWithImpl<
          GoogleSignInWithEmailAndPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String email),
    @required Result passwordChanged(String password),
    @required Result signInWithEmailAndPassword(),
    @required Result registerWithEmailAndPassword(String password),
    @required Result googleSignInWithEmailAndPassword(String password),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return googleSignInWithEmailAndPassword(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String email),
    Result passwordChanged(String password),
    Result signInWithEmailAndPassword(),
    Result registerWithEmailAndPassword(String password),
    Result googleSignInWithEmailAndPassword(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (googleSignInWithEmailAndPassword != null) {
      return googleSignInWithEmailAndPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    @required
        Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    @required
        Result googleSignInWithEmailAndPassword(
            GoogleSignInWithEmailAndPassword value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPassword != null);
    assert(registerWithEmailAndPassword != null);
    assert(googleSignInWithEmailAndPassword != null);
    return googleSignInWithEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPassword(SignInWithEmailAndPassword value),
    Result registerWithEmailAndPassword(RegisterWithEmailAndPassword value),
    Result googleSignInWithEmailAndPassword(
        GoogleSignInWithEmailAndPassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (googleSignInWithEmailAndPassword != null) {
      return googleSignInWithEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInWithEmailAndPassword implements SignInEvent {
  const factory GoogleSignInWithEmailAndPassword(String password) =
      _$GoogleSignInWithEmailAndPassword;

  String get password;
  $GoogleSignInWithEmailAndPasswordCopyWith<GoogleSignInWithEmailAndPassword>
      get copyWith;
}

class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) {
    return _SignInState(
      emailAddress: emailAddress,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailOrSucessOption: authFailOrSucessOption,
    );
  }
}

// ignore: unused_element
const $SignInState = _$SignInStateTearOff();

mixin _$SignInState {
  EmailAddress get emailAddress;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailOrSucessOption;

  $SignInStateCopyWith<SignInState> get copyWith;
}

abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailOrSucessOption});
}

class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailOrSucessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
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

abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailOrSucessOption});
}

class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailOrSucessOption = freezed,
  }) {
    return _then(_SignInState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
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

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {@required this.emailAddress,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailOrSucessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailOrSucessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailOrSucessOption;

  @override
  String toString() {
    return 'SignInState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailOrSucessOption: $authFailOrSucessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
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
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailOrSucessOption);

  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
          {@required EmailAddress emailAddress,
          @required Password password,
          @required bool showErrorMessages,
          @required bool isSubmitting,
          @required Option<Either<AuthFailure, Unit>> authFailOrSucessOption}) =
      _$_SignInState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailOrSucessOption;
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith;
}
