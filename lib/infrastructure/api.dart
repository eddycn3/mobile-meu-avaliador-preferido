import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

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
  static final String _baseUrl =
      "https://app-my-favorite-avaliator.herokuapp.com/";

  static Future<RetObj> post(
      {@required String reqBody, @required String urlSufix}) async {
    RetObj retObj;
    var client = http.Client();
    try {
      print(_baseUrl + urlSufix);
      print(reqBody);

      Map<String, String> headers = {'Content-Type': 'application/json'};

      var resp = await client.post(
        Uri.encodeFull(_baseUrl + urlSufix),
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
