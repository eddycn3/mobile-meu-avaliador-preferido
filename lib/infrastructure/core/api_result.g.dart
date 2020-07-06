// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiError _$_$_ApiErrorFromJson(Map<String, dynamic> json) {
  return _$_ApiError(
    json['httpStatusCode'] as int,
    json['errorMsg'] as String,
  );
}

Map<String, dynamic> _$_$_ApiErrorToJson(_$_ApiError instance) =>
    <String, dynamic>{
      'httpStatusCode': instance.httpStatusCode,
      'errorMsg': instance.errorMsg,
    };
