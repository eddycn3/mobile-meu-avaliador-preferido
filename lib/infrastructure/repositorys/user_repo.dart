import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class UserRepo {
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  Future<void> deleteToken() async {
    await storage.delete(key: "token");
  }

  Future<void> persistToken(String token) async {
    if (token != null) await storage.write(key: "token", value: token);
  }

  Future<bool> hasToken() async {
    return (await storage.read(key: "token")) != null;
  }
}
