import 'dart:convert';
//import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/src/models/avaliador.dart';
import 'package:my_personal_avaliator/src/models/usuario.dart';
import "package:my_personal_avaliator/src/api.dart";
import 'package:my_personal_avaliator/src/utils/constants.dart';

class UserRepo {
  Future<Usuario<Avaliador>> authenticate(Usuario user) {
    return Api.post(jsonEncode(user), userAuthSufix);
  }
}
