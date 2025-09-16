import 'package:json_annotation/json_annotation.dart';

part 'global_response_model.g.dart';

/// Classe de base abstraite pour les modèles de réponse
abstract class BaseResponseModel {
  final bool? success;
  final bool? error;
  final int? status;
  final String? message;

  const BaseResponseModel({this.success, this.error, this.status, this.message});

  /// Vérifie si la réponse est réussie basée sur le statut
  bool get isSuccess => status! >= 200 && status! < 300;

  /// Vérifie si la réponse contient une erreur
  bool get hasError => error! || !isSuccess;
}

/// Modèle de réponse générique pour données simples
@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ResponseModel<T> extends BaseResponseModel {
  final String? accessToken;
  final T? data;
  final List<String>? roles;

  const ResponseModel({
    required super.success,
    required super.error,
    required super.status,
    required super.message,
    this.accessToken,
    this.data,
    this.roles,
  });

  /// Crée une réponse de succès avec des paramètres optionnels
  factory ResponseModel.success({
    T? data,
    String? accessToken,
    List<String>? roles,
    String message = 'Opération réussie',
    int status = 200,
  }) => ResponseModel(
    success: true,
    error: false,
    status: status,
    message: message,
    data: data,
    accessToken: accessToken,
    roles: roles,
  );

  /// Crée une réponse d'erreur avec des paramètres optionnels
  factory ResponseModel.error({String message = 'Une erreur est survenue', int status = 400}) =>
      ResponseModel(success: false, error: true, status: status, message: message);

  /// Fabrique depuis JSON avec conversion du type générique
  factory ResponseModel.fromJson(Map<String, dynamic> json, T Function(Object? json)? fromJsonT) =>
      _$ResponseModelFromJson(json, fromJsonT!);

  /// Conversion vers JSON avec support du type générique
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$ResponseModelToJson(this, toJsonT);

  /// Copie le modèle avec des valeurs potentiellement modifiées
  ResponseModel<T> copyWith({
    bool? success,
    bool? error,
    int? status,
    String? message,
    String? accessToken,
    T? data,
    List<String>? roles,
  }) {
    return ResponseModel<T>(
      success: success ?? this.success,
      error: error ?? this.error,
      status: status ?? this.status,
      message: message ?? this.message,
      accessToken: accessToken ?? this.accessToken,
      data: data ?? this.data,
      roles: roles ?? this.roles,
    );
  }
}

/// Modèle de réponse générique pour listes de données avec pagination
@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class ResponseModelWithList<T> extends BaseResponseModel {
  final List<T>? data;
  final Meta? meta;
  final Links? links;

  const ResponseModelWithList({
    required super.success,
    required super.error,
    required super.status,
    required super.message,
    this.data,
    this.meta,
    this.links,
  });

  /// Crée une réponse de succès avec une liste de données et métadonnées
  factory ResponseModelWithList.success({
    List<T>? data,
    Meta? meta,
    Links? links,
    String message = 'Opération réussie',
    int status = 200,
  }) => ResponseModelWithList(
    success: true,
    error: false,
    status: status,
    message: message,
    data: data,
    meta: meta,
    links: links,
  );

  /// Crée une réponse d'erreur avec des paramètres optionnels
  factory ResponseModelWithList.error({String message = 'Une erreur est survenue', int status = 400}) =>
      ResponseModelWithList(success: false, error: true, status: status, message: message);

  /// Fabrique depuis JSON avec conversion du type générique
  factory ResponseModelWithList.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ResponseModelWithListFromJson(json, fromJsonT);

  /// Conversion vers JSON avec support du type générique
  Map<String, dynamic> toJson(Object Function(T value) toJsonT) => _$ResponseModelWithListToJson(this, toJsonT);

  /// Vérifie si la liste de données est vide
  bool get isEmpty => data == null || data!.isEmpty;

  /// Vérifie si la liste de données n'est pas vide
  bool get isNotEmpty => !isEmpty;

  /// Retourne la taille de la liste ou 0 si null
  int get length => data?.length ?? 0;

  /// Propriétés utilitaires pour la pagination
  int get itemsPerPage => meta?.itemsPerPage ?? 0;
  int get totalItems => meta?.totalItems ?? 0;
  int get currentPage => meta?.currentPage ?? 1;
  int get totalPages => meta?.totalPages ?? 1;
  String? get currentLink => links?.current;

  /// Copie le modèle avec des valeurs potentiellement modifiées
  ResponseModelWithList<T> copyWith({
    bool? success,
    bool? error,
    int? status,
    String? message,
    List<T>? data,
    Meta? meta,
    Links? links,
  }) {
    return ResponseModelWithList<T>(
      success: success ?? this.success,
      error: error ?? this.error,
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

/// Classe pour les métadonnées de pagination
@JsonSerializable()
class Meta {
  final int itemsPerPage;
  final int totalItems;
  final int currentPage;
  final int totalPages;
  final List<List<String>>? sortBy;

  const Meta({
    required this.itemsPerPage,
    required this.totalItems,
    required this.currentPage,
    required this.totalPages,
    this.sortBy,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

/// Classe pour les liens de pagination
@JsonSerializable()
class Links {
  final String current;

  const Links({required this.current});

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}
