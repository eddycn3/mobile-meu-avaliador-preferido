part of "login_bloc.dart";

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed<T> extends LoginEvent {
  final Usuario<T> usuario;

  const LoginButtonPressed({this.usuario});

  @override
  List<Object> get props => [usuario];

  @override
  String toString() =>
      "LoginButtonPressed {username : ${usuario.userName},password :${usuario.passWord}}";
}
