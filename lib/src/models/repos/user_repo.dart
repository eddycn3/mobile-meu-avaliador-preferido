import 'dart:convert';
//import 'package:meta/meta.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';
import "package:my_personal_avaliator/src/api.dart";
import 'package:my_personal_avaliator/src/utils/constants.dart';

class UserRepo {
  final storage = new FlutterSecureStorage();

  Future<String> authenticate(Usuario user) async {
    String token;
    try {
      var obj = await Api.post(jsonEncode(user), userAuthSufix);
      //print("UserRepo.authenticate = $obj");
      var usuario = Usuario.fromJson(obj);
      print("UserRepo.authenticate = $usuario");
      token = usuario.token;
    } catch (ex) {
      print(ex.toString());
    }
    return token;
  }

  Future<void> deleteToken() async {
    try {
      await storage.delete(key: "token");
    } catch (ex) {
      print(ex.toString());
    }
  }

  Future<void> persistToken(String token) async {
    try {
      if (token != null) await storage.write(key: "token", value: token);
    } catch (ex) {
      print(ex.toString());
    }
  }

  Future<bool> hasToken() async {
    return (await storage.read(key: "token")) != null;
  }
}
