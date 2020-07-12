import "package:flutter/foundation.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.emptyEmail({
    @required T failedValue,
  }) = EmptyEmail<T>;

  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.emptyPassword({
    @required T failedValue,
  }) = EmptyPassword<T>;

  const factory ValueFailure.invalidPersonName({
    @required T failedValue,
  }) = InvalidPersonName<T>;

  const factory ValueFailure.invalidPhone({
    @required T failedValue,
  }) = InvalidPhone<T>;

  const factory ValueFailure.invalidCPF({
    @required T failedValue,
  }) = InvalidCPF<T>;

  const factory ValueFailure.invalidIdConfef({
    @required T failedValue,
  }) = InvalidIdConfef<T>;
}
