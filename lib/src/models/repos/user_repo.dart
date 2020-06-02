import 'dart:convert';
//import 'package:meta/meta.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_personal_avaliator/src/models/avaliador.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';
import "package:my_personal_avaliator/src/api.dart";
import 'package:my_personal_avaliator/src/utils/constants.dart';

class UserRepo {
  final storage = new FlutterSecureStorage();

  Future<Usuario<Avaliador>> authenticate(Usuario user) {
    return Api.post(jsonEncode(user), userAuthSufix);
  }

  Future<void> deleteToken() async {
    await storage.delete(key: "token");
  }

  Future<void> persistToken(String token) async {
    await storage.write(key: "token", value: token);
  }

  Future<bool> hasToken() async {
    return (await storage.read(key: "token")) != null;
  }
}
