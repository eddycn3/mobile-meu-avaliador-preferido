import 'package:my_personal_avaliator/src/models/avaliador.dart';

enum UserType { avaliador, aluno }

class Usuario {
  final String userName;
  final String passWord;
  final int userType;
  final String token;
  dynamic userInfo;
  Usuario({
    this.userName,
    this.passWord,
    this.userType,
    this.userInfo,
    this.token,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    var user = Usuario(
        userName: json["user_name"],
        passWord: json["password"],
        userType: json["user_type"],
        token: json["token"]);
    if (json["user_type"] == UserType.avaliador) {
      user.userInfo = Avaliador.fromJson(json["user_info"]);
    } else {
      //HANDLE ANOTHER TYPES
    }
    return user;
  }

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "password": passWord,
        "user_type": userType,
      };

  static Map<String, dynamic> createUserRequest(Usuario user) => {
        "user_name": user.userName,
        "password": user.passWord,
        "user_type": user.userType,
        "user_info": user.userInfo
      };
}
