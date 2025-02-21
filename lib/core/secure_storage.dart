import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static final _storage = FlutterSecureStorage();

  static final String _loginKey = "login", _passwordKey = "password", _tokenKey = "token";

  static Future<void> saveCredentials({required String login, required String password}) async {
    await _storage.write(key: _loginKey, value: login);
    await _storage.write(key: _passwordKey, value: password);
  }

  static Future<Map<String, String?>> getCredentials() async {
    var credentials = {
      "login": await _storage.read(key: _loginKey),
      "password": await _storage.read(key: _passwordKey),
    };
    return credentials;
  }

  static Future<void> deleteCredentials() async {
    await _storage.delete(key: _loginKey);
    await _storage.delete(key: _passwordKey);
  }

  static Future<void> saveToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }

  static Future<String?> getToken() async {
    final String? token = await _storage.read(key: _tokenKey);
    return token;
  }

  static Future<void> deleteToken() async {
    await _storage.delete(key: _tokenKey);
  }
}
