class Usuario<T> {
  final String userName;
  final String passWord;
  final int userType;
  final T userInfo;
  Usuario({this.userName, this.passWord, this.userType, this.userInfo});

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
      userName: json["user_name"],
      passWord: json["password"],
      userType: json["user_type"],
      userInfo: json["user_info"]);

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "password": passWord,
        "user_type": userType,
      };
}
