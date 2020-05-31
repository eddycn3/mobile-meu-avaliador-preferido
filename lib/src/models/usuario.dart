class Usuario {
  final String userName;
  final String passWord;
  final int userType;

  Usuario({this.userName, this.passWord, this.userType});

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        userName: json["user_name"],
        passWord: json["password"],
        userType: json["user_type"],
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "password": passWord,
        "user_type": userType,
      };
}
