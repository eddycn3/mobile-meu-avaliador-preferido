import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_routes.dart';

class RetObj {
  final int statuCode;
  final dynamic obj;

  RetObj({this.statuCode, this.obj});

  @override
  String toString() {
    return "statuCode: $statuCode, obj: $obj";
  }
}

class Api {
  static Future<RetObj> post(
      {@required String reqBody, @required String urlSufix}) async {
    RetObj retObj;
    var client = http.Client();
    try {
      print(baseURL + urlSufix);
      print(reqBody);

      Map<String, String> headers = {'Content-Type': 'application/json'};

      var resp = await client.post(
        Uri.encodeFull(baseURL + urlSufix),
        headers: headers,
        body: reqBody,
      );
      var objDecoded = jsonDecode(resp.body);
      retObj = RetObj(obj: objDecoded, statuCode: resp.statusCode);
    } finally {
      client.close();
    }
    return retObj;
  }
}
