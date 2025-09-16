import 'package:potta_pos/src/shared/transalation/language/language.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';

class LanguageRepository {
  static const _storage = FlutterSecureStorage();
  static const String _languageKey = 'selected_language';

  // Langues disponibles
  static const List<Language> supportedLanguages = [
    Language(code: 'fr', name: 'Français', flag: '🇫🇷'),
    Language(code: 'en', name: 'English', flag: '🇺🇸'),
    Language(code: 'es', name: 'Español', flag: '🇪🇸'),
    Language(code: 'de', name: 'Deutsch', flag: '🇩🇪'),
    // Ajoutez d'autres langues selon vos besoins
  ];

  // Sauvegarder la langue sélectionnée
  Future<void> saveLanguage(String languageCode) async {
    try {
      await _storage.write(key: _languageKey, value: languageCode);
    } catch (e) {
      throw Exception('Erreur lors de la sauvegarde de la langue: $e');
    }
  }

  // Récupérer la langue sauvegardée
  Future<String?> getSavedLanguage() async {
    try {
      return await _storage.read(key: _languageKey);
    } catch (e) {
      throw Exception('Erreur lors de la récupération de la langue: $e');
    }
  }

  // Obtenir la langue par défaut du système
  String getSystemLanguage() {
    try {
      final systemLocale = WidgetsBinding.instance.window.locale;
      final languageCode = systemLocale.languageCode;

      // Vérifier si la langue du système est supportée
      final isSupported = supportedLanguages
          .any((lang) => lang.code == languageCode);

      return isSupported ? languageCode : 'fr'; // Français par défaut
    } catch (e) {
      return 'fr'; // Retour par défaut en cas d'erreur
    }
  }

  // Obtenir l'objet Language par code
  Language getLanguageByCode(String code) {
    return supportedLanguages.firstWhere(
          (lang) => lang.code == code,
      orElse: () => supportedLanguages.first,
    );
  }

  // Obtenir toutes les langues supportées
  List<Language> getAllSupportedLanguages() {
    return List.unmodifiable(supportedLanguages);
  }

  // Vérifier si une langue est supportée
  bool isLanguageSupported(String languageCode) {
    return supportedLanguages.any((lang) => lang.code == languageCode);
  }
}