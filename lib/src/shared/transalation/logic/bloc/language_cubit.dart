import 'package:potta_pos/src/shared/transalation/language/language.dart';
import 'package:potta_pos/src/shared/transalation/logic/bloc/language_state.dart';
import 'package:potta_pos/src/shared/transalation/logic/repository/language_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LanguageCubit extends Cubit<LanguageState> {
  final LanguageRepository _repository;

  LanguageCubit(this._repository) : super(LanguageInitial());

  // Initialiser la langue au démarrage de l'app
  Future<void> initializeLanguage() async {
    try {
      emit(LanguageLoading());

      final savedLanguage = await _repository.getSavedLanguage();
      String languageCode;

      if (savedLanguage != null && _repository.isLanguageSupported(savedLanguage)) {
        languageCode = savedLanguage;
      } else {
        // Utiliser la langue du système si aucune langue n'est sauvegardée
        languageCode = _repository.getSystemLanguage();
        await _repository.saveLanguage(languageCode);
      }

      final language = _repository.getLanguageByCode(languageCode);
      final locale = Locale(languageCode);

      emit(LanguageLoaded(
        currentLocale: locale,
        currentLanguage: language,
      ));
    } catch (e) {
      emit(LanguageError('Erreur lors de l\'initialisation de la langue: $e'));
    }
  }

  // Changer la langue
  Future<void> changeLanguage(String languageCode) async {
    try {
      final currentState = state;
      if (currentState is LanguageLoaded) {
        if (currentState.currentLocale.languageCode == languageCode) {
          return; // Même langue, pas de changement nécessaire
        }
      }

      emit(LanguageLoading());

      if (!_repository.isLanguageSupported(languageCode)) {
        emit(LanguageError('Langue non supportée: $languageCode'));
        return;
      }

      await _repository.saveLanguage(languageCode);
      final language = _repository.getLanguageByCode(languageCode);
      final locale = Locale(languageCode);

      emit(LanguageLoaded(
        currentLocale: locale,
        currentLanguage: language,
      ));
    } catch (e) {
      emit(LanguageError('Erreur lors du changement de langue: $e'));
    }
  }

  // Obtenir la langue actuelle
  Language? getCurrentLanguage() {
    final currentState = state;
    if (currentState is LanguageLoaded) {
      return currentState.currentLanguage;
    }
    return null;
  }

  // Obtenir la locale actuelle
  Locale? getCurrentLocale() {
    final currentState = state;
    if (currentState is LanguageLoaded) {
      return currentState.currentLocale;
    }
    return null;
  }

  // Obtenir toutes les langues supportées
  List<Language> getSupportedLanguages() {
    return _repository.getAllSupportedLanguages();
  }
}