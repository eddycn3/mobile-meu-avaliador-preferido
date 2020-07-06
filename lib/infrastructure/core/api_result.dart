import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';
part 'api_result.g.dart';

@freezed
abstract class ApiError with _$ApiError {
  const factory ApiError(
    int httpStatusCode,
    String errorMsg,
  ) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}
