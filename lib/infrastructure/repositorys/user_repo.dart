import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_personal_avaliator/domain/models/usuario.dart';
import 'package:my_personal_avaliator/infrastructure/api.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_routes.dart';

class UserRepo {
  final storage = new FlutterSecureStorage();

  Future<RetObj> authenticate({Usuario user}) async {
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

  Future<RetObj> register({Usuario user}) async {
    RetObj retObj;
    try {
      var u = Usuario.createUserRequest(user);
      var objR =
          await Api.post(reqBody: jsonEncode(u), urlSufix: userCreateSufix);

      if (objR.statuCode == 200) {
        var usuario = Usuario.fromJson(objR.obj);
        retObj = RetObj(obj: usuario, statuCode: objR.statuCode);
      } else {
        retObj = RetObj(obj: objR.obj, statuCode: objR.statuCode);
      }
      print(retObj);
    } catch (ex) {
      print("UserRepo.register:($retObj) , error: $ex ");
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
