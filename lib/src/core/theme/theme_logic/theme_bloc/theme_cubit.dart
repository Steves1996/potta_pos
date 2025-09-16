import 'package:potta_pos/src/core/theme/theme_logic/model/theme_state.dart';
import 'package:potta_pos/src/core/theme/theme_logic/repository/theme_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final ThemeRepository _themeRepository;

  ThemeCubit({required ThemeRepository themeRepository})
      : _themeRepository = themeRepository,
        super(ThemeState.initial());

  /// Initialise le thème au démarrage de l'app
  Future<void> initializeTheme() async {
    try {
      final savedThemeType = await _themeRepository.getThemePreference();
      await changeTheme(savedThemeType);
    } catch (e) {
      // En cas d'erreur, utiliser le thème système
      emit(state.copyWith(
        themeType: ThemeType.system,
        themeMode: ThemeMode.system,
      ));
    }
  }

  /// Change le thème et le sauvegarde
  Future<void> changeTheme(ThemeType themeType) async {
    try {
      ThemeMode themeMode;
      bool isDarkMode = false;

      switch (themeType) {
        case ThemeType.light:
          themeMode = ThemeMode.light;
          isDarkMode = false;
          break;
        case ThemeType.dark:
          themeMode = ThemeMode.dark;
          isDarkMode = true;
          break;
        case ThemeType.system:
          themeMode = ThemeMode.system;
          // Déterminer si le système est en mode sombre
          final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
          isDarkMode = brightness == Brightness.dark;
          break;
      }

      // Sauvegarder la préférence
      await _themeRepository.saveThemePreference(themeType);

      // Mettre à jour l'état
      emit(state.copyWith(
        themeType: themeType,
        themeMode: themeMode,
        isDarkMode: isDarkMode,
      ));

      // Mettre à jour la barre de statut
      _updateSystemUIOverlay(isDarkMode);
    } catch (e) {
      // Gérer l'erreur sans changer l'état actuel
      debugPrint('Erreur lors du changement de thème: $e');
    }
  }

  /// Met à jour l'apparence de la barre de statut
  void _updateSystemUIOverlay(bool isDarkMode) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
        statusBarBrightness: isDarkMode ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: isDarkMode ? const Color(0xFF121212) : Colors.white,
        systemNavigationBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      ),
    );
  }

  /// Bascule entre les thèmes light et dark
  Future<void> toggleTheme() async {
    final newThemeType = state.themeType == ThemeType.light
        ? ThemeType.dark
        : ThemeType.light;
    await changeTheme(newThemeType);
  }

  /// Met à jour le thème quand les paramètres système changent
  void updateSystemTheme() {
    if (state.themeType == ThemeType.system) {
      final brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
      final isDarkMode = brightness == Brightness.dark;

      if (isDarkMode != state.isDarkMode) {
        emit(state.copyWith(isDarkMode: isDarkMode));
        _updateSystemUIOverlay(isDarkMode);
      }
    }
  }

  /// Réinitialise les préférences de thème
  Future<void> resetThemePreferences() async {
    try {
      await _themeRepository.clearThemePreference();
      await changeTheme(ThemeType.system);
    } catch (e) {
      debugPrint('Erreur lors de la réinitialisation des préférences: $e');
    }
  }
}