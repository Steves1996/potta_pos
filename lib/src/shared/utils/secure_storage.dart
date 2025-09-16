import 'dart:convert';
import 'dart:developer';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final FlutterSecureStorage storage;
  SecureStorage({FlutterSecureStorage? storage}) : storage = storage ?? const FlutterSecureStorage();

  Future<void> setToken(String token) async {
    await storage.write(key: tokenKey, value: token);
  }

  Future<String?> getToken() async {
    return storage.read(key: tokenKey);
  }

  Future<void> clearToken() async {
    await storage.delete(key: tokenKey);
  }

  Future<void> setAccessToken(String token) async {
    await storage.write(key: accessTokenKey, value: token);
  }

  Future<String?> getAccessToken() async {
    return storage.read(key: accessTokenKey);
  }

  Future<void> clearAccessToken() async {
    await storage.delete(key: accessTokenKey);
  }

  //user Id
  Future<void> setUserId(String branchId) async {
    await storage.write(key: useIdKey, value: branchId);
  }

  Future<String?> getUserId() async {
    return storage.read(key: useIdKey);
  }

  Future<void> clearUserId() async {
    await storage.delete(key: useIdKey);
  }

  //user data
 /* Future<void> setUser(User user) async {
    final String userJson = jsonEncode(user.toJson());
    await storage.write(key: useDataKey, value: userJson);
  }

  Future<User?> getUser() async {
    try {
      final String? userJson = await storage.read(key: useDataKey);
      if (userJson != null && userJson.isNotEmpty) {
        final Map<String, dynamic> userMap = jsonDecode(userJson);
        return User.fromJson(userMap);
      }
      return null;
    } catch (e) {
      log('Erreur lors de la récupération de l\'utilisateur : $e');
      return null;
    }
  }*/

  Future<void> clearUser() async {
    await storage.delete(key: useDataKey);
  }

  // Clear all stored data
  Future<void> clearAll() async {
    await storage.deleteAll();
  }

  static const String tokenKey = 'ztf.token.key';
  static const String accessTokenKey = 'ztf.token.key';
  static const String useIdKey = 'ztf.employee.id.key';
  static const String useDataKey = 'ztf.user.key';
}
