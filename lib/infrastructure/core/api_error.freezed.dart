// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  return _ApiError.fromJson(json);
}

class _$ApiErrorTearOff {
  const _$ApiErrorTearOff();

// ignore: unused_element
  _ApiError call(String errorMsg) {
    return _ApiError(
      errorMsg,
    );
  }
}

// ignore: unused_element
const $ApiError = _$ApiErrorTearOff();

mixin _$ApiError {
  String get errorMsg;

  Map<String, dynamic> toJson();
  $ApiErrorCopyWith<ApiError> get copyWith;
}

abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res>;
  $Res call({String errorMsg});
}

class _$ApiErrorCopyWithImpl<$Res> implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  final ApiError _value;
  // ignore: unused_field
  final $Res Function(ApiError) _then;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_value.copyWith(
      errorMsg: errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

abstract class _$ApiErrorCopyWith<$Res> implements $ApiErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) then) =
      __$ApiErrorCopyWithImpl<$Res>;
  @override
  $Res call({String errorMsg});
}

class __$ApiErrorCopyWithImpl<$Res> extends _$ApiErrorCopyWithImpl<$Res>
    implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(_ApiError _value, $Res Function(_ApiError) _then)
      : super(_value, (v) => _then(v as _ApiError));

  @override
  _ApiError get _value => super._value as _ApiError;

  @override
  $Res call({
    Object errorMsg = freezed,
  }) {
    return _then(_ApiError(
      errorMsg == freezed ? _value.errorMsg : errorMsg as String,
    ));
  }
}

@JsonSerializable()
class _$_ApiError implements _ApiError {
  const _$_ApiError(this.errorMsg) : assert(errorMsg != null);

  factory _$_ApiError.fromJson(Map<String, dynamic> json) =>
      _$_$_ApiErrorFromJson(json);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'ApiError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiError &&
            (identical(other.errorMsg, errorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.errorMsg, errorMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMsg);

  @override
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      __$ApiErrorCopyWithImpl<_ApiError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApiErrorToJson(this);
  }
}

abstract class _ApiError implements ApiError {
  const factory _ApiError(String errorMsg) = _$_ApiError;

  factory _ApiError.fromJson(Map<String, dynamic> json) = _$_ApiError.fromJson;

  @override
  String get errorMsg;
  @override
  _$ApiErrorCopyWith<_ApiError> get copyWith;
}
