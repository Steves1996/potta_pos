import 'package:potta_pos/src/core/theme/theme_logic/model/theme_state.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ThemeRepository {
  static const String _themeKey = 'theme_preference';
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.first_unlock_this_device,
    ),
  );

  Future<ThemeType> getThemePreference() async {
    try {
      final themeString = await _secureStorage.read(key: _themeKey);

      if (themeString == null) {
        return ThemeType.system;
      }

      switch (themeString) {
        case 'light':
          return ThemeType.light;
        case 'dark':
          return ThemeType.dark;
        case 'system':
        default:
          return ThemeType.system;
      }
    } catch (e) {
      return ThemeType.system;
    }
  }

  Future<void> saveThemePreference(ThemeType themeType) async {
    try {
      String themeString;
      switch (themeType) {
        case ThemeType.light:
          themeString = 'light';
          break;
        case ThemeType.dark:
          themeString = 'dark';
          break;
        case ThemeType.system:
          themeString = 'system';
          break;
      }

      await _secureStorage.write(key: _themeKey, value: themeString);
    } catch (e) {
      throw Exception('Erreur lors de la sauvegarde des préférences de thème: $e');
    }
  }

  Future<void> clearThemePreference() async {
    try {
      await _secureStorage.delete(key: _themeKey);
    } catch (e) {
      throw Exception('Erreur lors de la suppression des préférences de thème: $e');
    }
  }
}