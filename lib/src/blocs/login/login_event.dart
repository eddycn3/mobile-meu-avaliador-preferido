part of "login_bloc.dart";

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
  final Usuario usuario;

  const LoginButtonPressed({@required this.usuario});

  @override
  List<Object> get props => [usuario];

  @override
  String toString() =>
      "LoginButtonPressed {username : ${usuario.userName},password :${usuario.passWord}}";
}
