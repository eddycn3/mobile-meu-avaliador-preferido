part of "auth_bloc.dart";

abstract class AuthState extends Equatable {
  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthSucess extends AuthState {}

class AuthFailure extends AuthState {}

class AuthInProgress extends AuthState {}
