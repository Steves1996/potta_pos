import 'dart:developer';

import 'package:potta_pos/src/core/routing/app_router.dart';
import 'package:potta_pos/src/shared/utils/secure_storage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'env.dart';

class DioService {
  static DioService? _instance;
  late Dio _dio;
  static const int connectTimeout = 30000; // 30 secondes
  static const int receiveTimeout = 30000; // 30 secondes
  static const String defaultGateway = 'potta';
  final SecureStorage _secureStorage = SecureStorage();

  // Change from 'late final' to nullable AppRouter
  static AppRouter? _appRouter;

  Dio get dio => _dio;

  factory DioService({String gateway = defaultGateway}) {
    _instance ??= DioService._internal(gateway);
    return _instance!;
  }

  static DioService createNewInstance({String gateway = defaultGateway}) {
    return DioService._internal(gateway);
  }

  // Updated method to safely set AppRouter
  static void setAppRouter(AppRouter router) {
    _appRouter = router;
  }

  // Getter to access the router safely
  static AppRouter? get appRouter => _appRouter;

  DioService._internal(String gateway) {
    _dio = Dio(
      BaseOptions(
        baseUrl: BaseUrl().baseUrlEndPoint(gateway),
        connectTimeout: const Duration(milliseconds: connectTimeout),
        receiveTimeout: const Duration(milliseconds: receiveTimeout),
        sendTimeout: const Duration(milliseconds: connectTimeout),
        headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _secureStorage.getToken() ?? await _secureStorage.getAccessToken();

          if (kDebugMode) {
            print("token access: $token");
          }
          options.headers['Authorization'] = 'Bearer $token';

          handler.next(options);
        },
        onResponse: (response, handler) {
          handler.next(response);
        },
        onError: (error, handler) async {
          log("auth: ${error.response}");

          if (error.response?.statusCode == 401) {
            // Clear all stored data
            await _secureStorage.clearToken();
            await _secureStorage.clearAll();

            if (kDebugMode) {
              print('Unauthorized: Token expired, redirecting to auth page');
            }

            try {
              if (_appRouter != null) {
                //await _appRouter!.replaceAll([const LoginRoute()]);
              } else {
                if (kDebugMode) {
                  print('AppRouter not initialized, cannot navigate to auth');
                }
              }
            } catch (e) {
              if (kDebugMode) {
                print('Error during navigation to auth: $e');
              }
            }
          }

          handler.next(error);
        },
      ),
    );
  }
}

// Extension pour simplifier l'utilisation (optionnel)
extension DioServiceExtension on DioService {
  // Méthode pour vérifier manuellement l'expiration du token
  Future<bool> isTokenValid() async {
    final token = await _secureStorage.getToken();
    return token != null && token.isNotEmpty;
  }

  // Méthode pour forcer la déconnexion
  Future<void> logout() async {
    await _secureStorage.clearAll();
    try {
      if (DioService.appRouter != null) {
        //await DioService.appRouter!.replaceAll([const LoginRoute()]);
      } else {
        if (kDebugMode) {
          print('AppRouter not initialized, cannot navigate during logout');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error during logout navigation: $e');
      }
    }
  }
}
