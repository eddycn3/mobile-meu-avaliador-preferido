// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({@required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  EmptyEmail<T> emptyEmail<T>({@required T failedValue}) {
    return EmptyEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({@required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  EmptyPassword<T> emptyPassword<T>({@required T failedValue}) {
    return EmptyPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidPersonName<T> invalidPersonName<T>({@required T failedValue}) {
    return InvalidPersonName<T>(
      failedValue: failedValue,
    );
  }

  InvalidPhone<T> invalidPhone<T>({@required T failedValue}) {
    return InvalidPhone<T>(
      failedValue: failedValue,
    );
  }

  InvalidCPF<T> invalidCPF<T>({@required T failedValue}) {
    return InvalidCPF<T>(
      failedValue: failedValue,
    );
  }

  InvalidIdConfef<T> invalidIdConfef<T>({@required T failedValue}) {
    return InvalidIdConfef<T>(
      failedValue: failedValue,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $EmptyEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyEmailCopyWith(
          EmptyEmail<T> value, $Res Function(EmptyEmail<T>) then) =
      _$EmptyEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$EmptyEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyEmailCopyWith<T, $Res> {
  _$EmptyEmailCopyWithImpl(
      EmptyEmail<T> _value, $Res Function(EmptyEmail<T>) _then)
      : super(_value, (v) => _then(v as EmptyEmail<T>));

  @override
  EmptyEmail<T> get _value => super._value as EmptyEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(EmptyEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$EmptyEmail<T> with DiagnosticableTreeMixin implements EmptyEmail<T> {
  const _$EmptyEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.emptyEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.emptyEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyEmailCopyWith<T, EmptyEmail<T>> get copyWith =>
      _$EmptyEmailCopyWithImpl<T, EmptyEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return emptyEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyEmail != null) {
      return emptyEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return emptyEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyEmail != null) {
      return emptyEmail(this);
    }
    return orElse();
  }
}

abstract class EmptyEmail<T> implements ValueFailure<T> {
  const factory EmptyEmail({@required T failedValue}) = _$EmptyEmail<T>;

  @override
  T get failedValue;
  @override
  $EmptyEmailCopyWith<T, EmptyEmail<T>> get copyWith;
}

abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

abstract class $EmptyPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyPasswordCopyWith(
          EmptyPassword<T> value, $Res Function(EmptyPassword<T>) then) =
      _$EmptyPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$EmptyPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyPasswordCopyWith<T, $Res> {
  _$EmptyPasswordCopyWithImpl(
      EmptyPassword<T> _value, $Res Function(EmptyPassword<T>) _then)
      : super(_value, (v) => _then(v as EmptyPassword<T>));

  @override
  EmptyPassword<T> get _value => super._value as EmptyPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(EmptyPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$EmptyPassword<T>
    with DiagnosticableTreeMixin
    implements EmptyPassword<T> {
  const _$EmptyPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.emptyPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.emptyPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $EmptyPasswordCopyWith<T, EmptyPassword<T>> get copyWith =>
      _$EmptyPasswordCopyWithImpl<T, EmptyPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return emptyPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyPassword != null) {
      return emptyPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return emptyPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emptyPassword != null) {
      return emptyPassword(this);
    }
    return orElse();
  }
}

abstract class EmptyPassword<T> implements ValueFailure<T> {
  const factory EmptyPassword({@required T failedValue}) = _$EmptyPassword<T>;

  @override
  T get failedValue;
  @override
  $EmptyPasswordCopyWith<T, EmptyPassword<T>> get copyWith;
}

abstract class $InvalidPersonNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPersonNameCopyWith(InvalidPersonName<T> value,
          $Res Function(InvalidPersonName<T>) then) =
      _$InvalidPersonNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidPersonNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPersonNameCopyWith<T, $Res> {
  _$InvalidPersonNameCopyWithImpl(
      InvalidPersonName<T> _value, $Res Function(InvalidPersonName<T>) _then)
      : super(_value, (v) => _then(v as InvalidPersonName<T>));

  @override
  InvalidPersonName<T> get _value => super._value as InvalidPersonName<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPersonName<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidPersonName<T>
    with DiagnosticableTreeMixin
    implements InvalidPersonName<T> {
  const _$InvalidPersonName({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPersonName(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPersonName'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPersonName<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPersonNameCopyWith<T, InvalidPersonName<T>> get copyWith =>
      _$InvalidPersonNameCopyWithImpl<T, InvalidPersonName<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidPersonName(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPersonName != null) {
      return invalidPersonName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidPersonName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPersonName != null) {
      return invalidPersonName(this);
    }
    return orElse();
  }
}

abstract class InvalidPersonName<T> implements ValueFailure<T> {
  const factory InvalidPersonName({@required T failedValue}) =
      _$InvalidPersonName<T>;

  @override
  T get failedValue;
  @override
  $InvalidPersonNameCopyWith<T, InvalidPersonName<T>> get copyWith;
}

abstract class $InvalidPhoneCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPhoneCopyWith(
          InvalidPhone<T> value, $Res Function(InvalidPhone<T>) then) =
      _$InvalidPhoneCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidPhoneCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneCopyWith<T, $Res> {
  _$InvalidPhoneCopyWithImpl(
      InvalidPhone<T> _value, $Res Function(InvalidPhone<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhone<T>));

  @override
  InvalidPhone<T> get _value => super._value as InvalidPhone<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPhone<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidPhone<T>
    with DiagnosticableTreeMixin
    implements InvalidPhone<T> {
  const _$InvalidPhone({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPhone(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPhone'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhone<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidPhoneCopyWith<T, InvalidPhone<T>> get copyWith =>
      _$InvalidPhoneCopyWithImpl<T, InvalidPhone<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhone != null) {
      return invalidPhone(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class InvalidPhone<T> implements ValueFailure<T> {
  const factory InvalidPhone({@required T failedValue}) = _$InvalidPhone<T>;

  @override
  T get failedValue;
  @override
  $InvalidPhoneCopyWith<T, InvalidPhone<T>> get copyWith;
}

abstract class $InvalidCPFCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidCPFCopyWith(
          InvalidCPF<T> value, $Res Function(InvalidCPF<T>) then) =
      _$InvalidCPFCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidCPFCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCPFCopyWith<T, $Res> {
  _$InvalidCPFCopyWithImpl(
      InvalidCPF<T> _value, $Res Function(InvalidCPF<T>) _then)
      : super(_value, (v) => _then(v as InvalidCPF<T>));

  @override
  InvalidCPF<T> get _value => super._value as InvalidCPF<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidCPF<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidCPF<T> with DiagnosticableTreeMixin implements InvalidCPF<T> {
  const _$InvalidCPF({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidCPF(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidCPF'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCPF<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidCPFCopyWith<T, InvalidCPF<T>> get copyWith =>
      _$InvalidCPFCopyWithImpl<T, InvalidCPF<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidCPF(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCPF != null) {
      return invalidCPF(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidCPF(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidCPF != null) {
      return invalidCPF(this);
    }
    return orElse();
  }
}

abstract class InvalidCPF<T> implements ValueFailure<T> {
  const factory InvalidCPF({@required T failedValue}) = _$InvalidCPF<T>;

  @override
  T get failedValue;
  @override
  $InvalidCPFCopyWith<T, InvalidCPF<T>> get copyWith;
}

abstract class $InvalidIdConfefCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidIdConfefCopyWith(
          InvalidIdConfef<T> value, $Res Function(InvalidIdConfef<T>) then) =
      _$InvalidIdConfefCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

class _$InvalidIdConfefCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidIdConfefCopyWith<T, $Res> {
  _$InvalidIdConfefCopyWithImpl(
      InvalidIdConfef<T> _value, $Res Function(InvalidIdConfef<T>) _then)
      : super(_value, (v) => _then(v as InvalidIdConfef<T>));

  @override
  InvalidIdConfef<T> get _value => super._value as InvalidIdConfef<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidIdConfef<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

class _$InvalidIdConfef<T>
    with DiagnosticableTreeMixin
    implements InvalidIdConfef<T> {
  const _$InvalidIdConfef({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidIdConfef(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidIdConfef'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidIdConfef<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidIdConfefCopyWith<T, InvalidIdConfef<T>> get copyWith =>
      _$InvalidIdConfefCopyWithImpl<T, InvalidIdConfef<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(T failedValue),
    @required Result emptyEmail(T failedValue),
    @required Result shortPassword(T failedValue),
    @required Result emptyPassword(T failedValue),
    @required Result invalidPersonName(T failedValue),
    @required Result invalidPhone(T failedValue),
    @required Result invalidCPF(T failedValue),
    @required Result invalidIdConfef(T failedValue),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidIdConfef(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(T failedValue),
    Result emptyEmail(T failedValue),
    Result shortPassword(T failedValue),
    Result emptyPassword(T failedValue),
    Result invalidPersonName(T failedValue),
    Result invalidPhone(T failedValue),
    Result invalidCPF(T failedValue),
    Result invalidIdConfef(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidIdConfef != null) {
      return invalidIdConfef(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result emptyEmail(EmptyEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result emptyPassword(EmptyPassword<T> value),
    @required Result invalidPersonName(InvalidPersonName<T> value),
    @required Result invalidPhone(InvalidPhone<T> value),
    @required Result invalidCPF(InvalidCPF<T> value),
    @required Result invalidIdConfef(InvalidIdConfef<T> value),
  }) {
    assert(invalidEmail != null);
    assert(emptyEmail != null);
    assert(shortPassword != null);
    assert(emptyPassword != null);
    assert(invalidPersonName != null);
    assert(invalidPhone != null);
    assert(invalidCPF != null);
    assert(invalidIdConfef != null);
    return invalidIdConfef(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result emptyEmail(EmptyEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result emptyPassword(EmptyPassword<T> value),
    Result invalidPersonName(InvalidPersonName<T> value),
    Result invalidPhone(InvalidPhone<T> value),
    Result invalidCPF(InvalidCPF<T> value),
    Result invalidIdConfef(InvalidIdConfef<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidIdConfef != null) {
      return invalidIdConfef(this);
    }
    return orElse();
  }
}

abstract class InvalidIdConfef<T> implements ValueFailure<T> {
  const factory InvalidIdConfef({@required T failedValue}) =
      _$InvalidIdConfef<T>;

  @override
  T get failedValue;
  @override
  $InvalidIdConfefCopyWith<T, InvalidIdConfef<T>> get copyWith;
}
