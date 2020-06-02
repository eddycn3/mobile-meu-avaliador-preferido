import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  static final String _baseUrl =
      "https://app-my-favorite-avaliator.herokuapp.com/";

  static Future<dynamic> post(String reqBody, String urlSufix) async {
    var client = http.Client();
    try {
      print(_baseUrl + urlSufix);
      var encodedBody = json.encode(reqBody);
      print(encodedBody);

      Map<String, String> headers = {'Content-Type': 'application/json'};

      var resp = await client.post(
        Uri.encodeFull(_baseUrl + urlSufix),
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
