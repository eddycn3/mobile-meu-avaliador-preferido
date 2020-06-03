import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';
import "package:my_personal_avaliator/src/api.dart";
import 'package:my_personal_avaliator/src/utils/constants.dart';

class UserRepo {
  final storage = new FlutterSecureStorage();

  Future<RetObj> authenticate({Usuario user}) async {
    //String token;
    RetObj retObj;
    try {
      var objR =
          await Api.post(reqBody: jsonEncode(user), urlSufix: userAuthSufix);

      if (objR.statuCode == 200) {
        var usuario = Usuario.fromJson(objR.obj);
        retObj = RetObj(obj: usuario.token, statuCode: objR.statuCode);
      } else {
        retObj = RetObj(obj: objR.obj, statuCode: objR.statuCode);
      }
      print(retObj);
    } catch (ex) {
      print("UserRepo.authenticate:ret($retObj) , error: $ex ");
    }
    return retObj;
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
