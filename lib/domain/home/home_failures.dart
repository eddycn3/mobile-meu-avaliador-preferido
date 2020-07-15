import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_failures.freezed.dart';

@freezed
abstract class HomeFailure with _$HomeFailure {
  const factory HomeFailure.userInfoNotFound() = UserInfoNotFound;
  const factory HomeFailure.noTokenProvided() = NoTokenProvided;
  const factory HomeFailure.tokenError() = TokenError;
  const factory HomeFailure.tokenMalformed() = TokenMalformed;
  const factory HomeFailure.invalidToken() = InvalidToken;
}
