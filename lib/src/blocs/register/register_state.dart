import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class RegisterState extends Equatable {
  const RegisterState();
  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterInProgress extends RegisterState {}

class RegisterSucess extends RegisterState {}

class RegisterError extends RegisterState {
  final String error;

  RegisterError({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() {
    return "RegisterError => error: $error";
  }
}
