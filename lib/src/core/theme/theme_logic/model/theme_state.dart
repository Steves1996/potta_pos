import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum ThemeType { light, dark, system }

class ThemeState extends Equatable {
  final ThemeType themeType;
  final ThemeMode themeMode;
  final bool isDarkMode;

  const ThemeState({required this.themeType, required this.themeMode, required this.isDarkMode});

  factory ThemeState.initial() {
    return const ThemeState(themeType: ThemeType.system, themeMode: ThemeMode.system, isDarkMode: false);
  }

  ThemeState copyWith({ThemeType? themeType, ThemeMode? themeMode, bool? isDarkMode}) {
    return ThemeState(
      themeType: themeType ?? this.themeType,
      themeMode: themeMode ?? this.themeMode,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }

  @override
  List<Object> get props => [themeType, themeMode, isDarkMode];
}
