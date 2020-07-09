import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_routes.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_result.dart';

abstract class Api {
  /// Errors:
  ///
  ///- FOR USER REQUESTS
  ///  * `ERROR_EMAIL_EXISTS` - Indicates that email alredy in use
  ///  * `ERROR_CPF_EXISTS` - Indicates that the cpf alredy in use
  ///  * `ERROR_IDCONFEF_EXISTS` - Indicates that the id_confef alredy in use
  ///  * `ERROR_USER_NOT_FOUND` - Indicates that the user cant be found with the email + password combination
  ///
  /// - GENERAL
  ///  * `NO_INTERNET_CONNECTION` - Indicates that the id_confef alredy in use
  ///  * `BAD_RESPONSE` - Indicates a bad format response

  static Future<String> post({
    @required String reqBody,
    @required String urlSufix,
  }) async {
    final http.Client client = http.Client();
    http.Response resp;
    try {
      print(reqBody);
      print(baseURL + urlSufix);
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      resp = await client.post(
        Uri.encodeFull(baseURL + urlSufix),
        headers: headers,
        body: reqBody,
      );
      if (resp.statusCode == 200) {
        return resp.body;
      } else {
        final error = ApiError.fromJson(jsonDecode(resp.body));
        print(error);
        throw error;
      }
    } on SocketException {
      throw const ApiError('NO_INTERNET_CONNECTION');
    } on HttpException {
      throw const ApiError('HttpException_ERROR');
    } on FormatException {
      throw const ApiError("BAD_RESPONSE");
    } finally {
      client.close();
    }
  }
}
