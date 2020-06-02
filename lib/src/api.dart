import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  static final String _baseUrl =
      "https://app-my-favorite-avaliator.herokuapp.com/";

  static Future post(String reqBody, String urlSufix) async {
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
      print(resp.statusCode);
      if (resp.statusCode == 200) {
        var objDecoded = jsonDecode(resp.body);
        print(objDecoded);
        return objDecoded;
      }
    } finally {
      client.close();
    }
  }
}
