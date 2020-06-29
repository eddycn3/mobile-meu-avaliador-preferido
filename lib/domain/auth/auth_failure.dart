import "package:freezed_annotation/freezed_annotation.dart";

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.cpfAlredyInUse() = CpfAlredyInUse;
  const factory AuthFailure.idConfefAlredyInUse() = IdConfefAlredyInUse;
  const factory AuthFailure.emailAlredyInUse() = EmailAlredyInUse;
}
