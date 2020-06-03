import 'package:equatable/equatable.dart';

class RegisterState extends Equatable {
  const RegisterState();
  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterInProgress extends RegisterState {}

class RegisterError extends RegisterState {
  final String error;

  RegisterError({this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() {
    return "RegisterError => error: $error";
  }
}
