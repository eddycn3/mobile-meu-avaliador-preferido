import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_personal_avaliator/src/utils/constants.dart';

class Api {
  static Future<dynamic> post(
      Map<String, dynamic> reqBody, String urlSufix) async {
    var client = http.Client();
    try {
      print(baseUrl + urlSufix);
      var encodedBody = json.encode(reqBody);
      print(encodedBody);

      Map<String, String> headers = {'Content-Type': 'application/json'};

      var resp = await client.post(
        Uri.encodeFull(baseUrl + urlSufix),
        headers: headers,
        body: encodedBody,
      );
      print(resp.statusCode);
      if (resp.statusCode == 200) {
        var jsonObj = json.decode(resp.body);
        print(jsonObj);
      }
    } finally {
      client.close();
    }
  }
}
