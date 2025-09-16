import 'package:potta_pos/src/shared/transalation/language/language.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class LanguageState extends Equatable {
  const LanguageState();

  @override
  List<Object> get props => [];
}

class LanguageInitial extends LanguageState {}

class LanguageLoading extends LanguageState {}

class LanguageLoaded extends LanguageState {
  final Locale currentLocale;
  final Language currentLanguage;

  const LanguageLoaded({
    required this.currentLocale,
    required this.currentLanguage,
  });

  @override
  List<Object> get props => [currentLocale, currentLanguage];
}

class LanguageError extends LanguageState {
  final String message;

  const LanguageError(this.message);

  @override
  List<Object> get props => [message];
}