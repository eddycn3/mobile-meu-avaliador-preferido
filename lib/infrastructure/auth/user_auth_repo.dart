import 'dart:convert';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import 'package:meta/meta.dart';
import 'package:my_personal_avaliator/infrastructure/auth/user_auth_dtos.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_routes.dart';
import 'package:my_personal_avaliator/infrastructure/core/api_error.dart';

// ignore_for_file: argument_type_not_assignable
@injectable
class UserAuthRepo {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  /// Errors:
  ///- FOR USER REQUESTS
  ///  * `ERROR_EMAIL_EXISTS` - Indicates that email alredy in use
  ///  * `ERROR_CPF_EXISTS` - Indicates that the cpf alredy in use
  ///  * `ERROR_IDCONFEF_EXISTS` - Indicates that the id_confef alredy in use
  ///  * `ERROR_USER_NOT_FOUND` - Indicates that the user cant be found with the email + password combination
  ///
  /// - GENERAL
  ///  * `NO_INTERNET_CONNECTION` - Indicates that the id_confef alredy in use
  ///  * `BAD_RESPONSE` - Indicates a bad format response
  Future<UserDto> create({
    @required Map reqBody,
    @required String urlSufix,
  }) async {
    final http.Client client = http.Client();
    http.Response resp;
    try {
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      resp = await client.post(
        Uri.encodeFull(baseURL + urlSufix),
        headers: headers,
        body: reqBody,
      );
      if (resp.statusCode == 200) {
        return UserDto.fromJson(jsonDecode(resp.body));
      } else {
        final error = ApiError.fromJson(jsonDecode(resp.body));
        throw error;
      }
    } on SocketException {
      throw const ApiError('NO_INTERNET_CONNECTION');
    } on HttpException {
      throw const ApiError('HTTP_EXCEPTION_ERROR');
    } on FormatException {
      throw const ApiError("BAD_RESPONSE");
    } finally {
      client.close();
    }
  }

  /// Errors:
  /// * `ERROR_USER_NOT_FOUND` - Indicates that the user cant be found with the email + password combination
  /// - GENERAL
  ///  * `NO_INTERNET_CONNECTION` - Indicates that the id_confef alredy in use
  ///  * `BAD_RESPONSE` - Indicates a bad format response
  Future<UserDto> authenticate({
    @required String reqBody,
    @required String urlSufix,
  }) async {
    final http.Client client = http.Client();
    http.Response resp;
    try {
      print(baseURL + urlSufix);
      print(reqBody);
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      resp = await client.post(
        Uri.encodeFull(baseURL + urlSufix),
        headers: headers,
        body: reqBody,
      );
      if (resp.statusCode == 200) {
        final jsonResponse = jsonDecode(resp.body);
        final id = jsonResponse["id"];
        final token = jsonResponse["token"];
        return UserDto(id: id, token: token);
      } else {
        final error = ApiError.fromJson(jsonDecode(resp.body));
        throw error;
      }
    } on SocketException {
      throw const ApiError('NO_INTERNET_CONNECTION');
    } on HttpException {
      throw const ApiError('HTTP_EXCEPTION_ERROR');
    } on FormatException {
      throw const ApiError("BAD_RESPONSE");
    } finally {
      client.close();
    }
  }

  /// Errors:
  /// * `ERROR_USER_INFO_NOT_FOUND` - Indicates that the user cant be found with the given id
  /// * `NO_TOKEN_PROVIDED`  - Indicates that the a token was not provided in the request
  /// * `TOKEN_ERROR` - Indicates that the token does not have 2 parts
  /// * `TOKEN_MALFORMED`- Indicates that the token provided dont respect the pattern of prefix 'Bearer'
  /// * `INVALID_TOKEN` - Indicates that the token is experied or is invalid compared with the server JWT secret
  Future<String> getUserInfo({
    @required String urlSufix,
    @required String userToken,
  }) async {
    final http.Client client = http.Client();
    http.Response resp;
    try {
      final Map<String, String> headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer {$userToken}'
      };
      resp = await client.get(
        Uri.encodeFull(baseURL + urlSufix),
        headers: headers,
      );
      if (resp.statusCode == 200) {
        return resp.body;
      } else {
        // ignore: argument_type_not_assignable
        final error = ApiError.fromJson(jsonDecode(resp.body));
        throw error;
      }
    } on SocketException {
      throw const ApiError('NO_INTERNET_CONNECTION');
    } on HttpException {
      throw const ApiError('HTTP_EXCEPTION_ERROR');
    } on FormatException {
      throw const ApiError("BAD_RESPONSE");
    } finally {
      client.close();
    }
  }

  /// Delete from local storage the the user token
  Future<void> deleteToken() async {
    await storage.delete(key: "token");
  }

  /// Persist the given user token on local storage
  Future<void> persistToken(String token) async {
    if (token != null) await storage.write(key: "token", value: token);
  }

  /// Check for a token in local storage
  Future<bool> hasToken() async {
    return (await storage.read(key: "token")) != null;
  }
}
