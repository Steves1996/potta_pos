import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

// Configuration du logger
final _logger = Logger('AppException');

/// Base exception class for all app-specific exceptions
class AppException implements Exception {
  final String message;
  final Map<String, String> fieldErrors;
  final String? code;
  final int? statusCode;
  final dynamic data;
  final StackTrace? stackTrace;
  final String? status;

  const AppException({
    required this.message,
    this.fieldErrors = const {},
    this.code,
    this.statusCode,
    this.data,
    this.stackTrace,
    this.status,
  });

  /// Retourne tous les messages d'erreur (message principal + erreurs de champs)
  List<String> get allMessages {
    List<String> messages = [message];
    if (fieldErrors.isNotEmpty) {
      messages.addAll(fieldErrors.values);
    }
    return messages;
  }

  /// Retourne le message d'erreur formaté avec les erreurs de champs
  String get formattedMessage {
    if (fieldErrors.isEmpty) {
      return message;
    }
    final fieldErrorsStr = fieldErrors.entries.map((entry) => '${entry.key}: ${entry.value}').join(', ');
    return '$message ($fieldErrorsStr)';
  }

  /// Retourne l'erreur pour un champ spécifique
  String? getFieldError(String fieldName) {
    return fieldErrors[fieldName];
  }

  /// Vérifie si une erreur existe pour un champ spécifique
  bool hasFieldError(String fieldName) {
    return fieldErrors.containsKey(fieldName);
  }

  /// Vérifie si l'exception contient des erreurs de validation
  bool get hasValidationErrors => fieldErrors.isNotEmpty;

  @override
  String toString() {
    final codeStr = code != null ? ' ($code)' : '';
    final statusStr = statusCode != null ? '' : '';
    final statusIndicator = status != null ? '' : '';
    return '$formattedMessage$codeStr$statusStr$statusIndicator';
  }
}

/// Exception thrown when validation fails (typically 400 with field errors)
class ValidationException extends AppException {
  ValidationException({
    required super.message,
    super.fieldErrors = const {},
    super.code,
    super.statusCode,
    super.data,
    super.stackTrace,
    super.status,
  });
}

/// Exception thrown when the server returns a 400 Bad Request response
class BadRequestException extends AppException {
  BadRequestException({
    required super.message,
    super.fieldErrors = const {},
    super.code,
    super.statusCode,
    super.data,
    super.stackTrace,
    super.status,
  });
}

/// Exception thrown when the server returns a 401 or 403 Unauthorized response
class UnauthorizedException extends AppException {
  UnauthorizedException({
    required super.message,
    super.fieldErrors = const {},
    super.code,
    super.statusCode,
    super.data,
    super.stackTrace,
    super.status,
  });
}

/// Exception thrown when the server returns a 404 Not Found response
class NotFoundException extends AppException {
  NotFoundException({
    required super.message,
    super.fieldErrors = const {},
    super.code,
    super.statusCode,
    super.data,
    super.stackTrace,
    super.status,
  });
}

/// Exception thrown when there's an error fetching data from the server
class FetchDataException extends AppException {
  FetchDataException({
    required super.message,
    super.fieldErrors = const {},
    super.code,
    super.statusCode,
    super.data,
    super.stackTrace,
    super.status,
  });
}

/// Exception thrown when the input data is invalid
class InvalidInputException extends AppException {
  InvalidInputException({
    super.fieldErrors = const {},
    super.code,
    super.statusCode,
    super.data,
    super.stackTrace,
    super.status,
  }) : super(message: 'Invalid input data provided');
}

/// Exception thrown when there's a server error (5xx)
class ServerErrorException extends AppException {
  ServerErrorException({
    required super.message,
    super.fieldErrors = const {},
    super.code,
    super.statusCode,
    super.data,
    super.stackTrace,
    super.status,
  });
}

/// Handles HTTP response errors and converts them to appropriate exceptions
AppException handleResponseError(Response? response, {StackTrace? stackTrace}) {
  _logger.warning('Handling response error: ${response?.statusCode}');

  if (response == null) {
    final exception = FetchDataException(message: 'No response received from server', stackTrace: stackTrace);
    _logger.severe('No response received: $exception');
    return exception;
  }

  final dynamic errorData = response.data;
  final ErrorInfo errorInfo = _extractErrorInfo(errorData);
  final int statusCode = response.statusCode ?? 0;

  AppException exception;

  // Cas spécial pour les erreurs de validation avec des erreurs de champs
  if (statusCode == 400 && errorInfo.fieldErrors.isNotEmpty) {
    exception = ValidationException(
      message: errorInfo.message,
      fieldErrors: errorInfo.fieldErrors,
      code: errorInfo.code,
      statusCode: statusCode,
      data: errorData,
      stackTrace: stackTrace,
      status: errorInfo.status,
    );
  } else {
    switch (statusCode) {
      case 400:
        exception = BadRequestException(
          message: errorInfo.message,
          fieldErrors: errorInfo.fieldErrors,
          code: errorInfo.code,
          statusCode: statusCode,
          data: errorData,
          stackTrace: stackTrace,
          status: errorInfo.status,
        );
        break;
      case 401:
      case 403:
        exception = UnauthorizedException(
          message: errorInfo.message,
          fieldErrors: errorInfo.fieldErrors,
          code: errorInfo.code,
          statusCode: statusCode,
          data: errorData,
          stackTrace: stackTrace,
          status: errorInfo.status,
        );
        break;
      case 404:
        exception = NotFoundException(
          message: errorInfo.message,
          fieldErrors: errorInfo.fieldErrors,
          code: errorInfo.code,
          statusCode: statusCode,
          data: errorData,
          stackTrace: stackTrace,
          status: errorInfo.status,
        );
        break;
      case 500:
      case 502:
      case 503:
      case 504:
        exception = ServerErrorException(
          message: errorInfo.message,
          fieldErrors: errorInfo.fieldErrors,
          code: errorInfo.code,
          statusCode: statusCode,
          data: errorData,
          stackTrace: stackTrace,
          status: errorInfo.status,
        );
        break;
      default:
        exception = FetchDataException(
          message: errorInfo.message,
          fieldErrors: errorInfo.fieldErrors,
          code: errorInfo.code,
          statusCode: statusCode,
          data: errorData,
          stackTrace: stackTrace,
          status: errorInfo.status,
        );
        break;
    }
  }

  _logger.severe('Response error: $exception');
  return exception;
}

/// Handles Dio-specific errors and converts them to appropriate exceptions
AppException handleDioError(DioException error, {StackTrace? stackTrace}) {
  _logger.warning('Handling Dio error: ${error.type}');

  AppException exception;
  switch (error.type) {
    case DioExceptionType.cancel:
      exception = FetchDataException(message: 'Request cancelled', stackTrace: stackTrace);
      break;
    case DioExceptionType.connectionTimeout:
      exception = FetchDataException(message: 'Connection timeout', stackTrace: stackTrace);
      break;
    case DioExceptionType.sendTimeout:
      exception = FetchDataException(message: 'Send timeout', stackTrace: stackTrace);
      break;
    case DioExceptionType.receiveTimeout:
      exception = FetchDataException(message: 'Response timeout', stackTrace: stackTrace);
      break;
    case DioExceptionType.badCertificate:
      exception = FetchDataException(message: 'Invalid SSL certificate', stackTrace: stackTrace);
      break;
    case DioExceptionType.connectionError:
      exception = FetchDataException(message: 'No internet connection', stackTrace: stackTrace);
      break;
    case DioExceptionType.badResponse:
      return handleResponseError(error.response, stackTrace: stackTrace);
    case DioExceptionType.unknown:
      exception = FetchDataException(
        message: error.error?.toString() ?? 'Unknown error occurred',
        stackTrace: stackTrace,
      );
      break;
  }

  _logger.severe('Dio error: $exception');
  return exception;
}

/// Classe pour encapsuler les informations d'erreur extraites
class ErrorInfo {
  final String message;
  final Map<String, String> fieldErrors;
  final String? code;
  final String? status;

  const ErrorInfo({required this.message, this.fieldErrors = const {}, this.code, this.status});
}

/// Extracts error information from response data based on your API structure
ErrorInfo _extractErrorInfo(dynamic errorData) {
  if (errorData == null) {
    _logger.fine('No error data provided');
    return const ErrorInfo(message: 'Unknown error occurred');
  }

  if (errorData is Map) {
    String mainMessage = 'Unknown error occurred';
    Map<String, String> fieldErrors = {};
    String? code;
    String? status;

    // Extraction du status
    status = errorData['status']?.toString();

    // Extraction du message principal
    final messageField = errorData['message'];
    if (messageField is String && messageField.isNotEmpty) {
      mainMessage = messageField;
    }

    // Extraction des erreurs de champs depuis le champ "errors"
    final errorsField = errorData['errors'];
    if (errorsField is Map) {
      errorsField.forEach((key, value) {
        if (key is String && value is String) {
          fieldErrors[key] = value;
        } else if (key is String && value != null) {
          fieldErrors[key] = value.toString();
        }
      });
    }

    // Extraction du code d'erreur
    code = errorData['code']?.toString() ?? errorData['error_code']?.toString();

    // Si pas de message principal mais des erreurs de champs, utiliser la première erreur
    if (mainMessage == 'Unknown error occurred' && fieldErrors.isNotEmpty) {
      mainMessage = fieldErrors.values.first;
    }

    // Cas alternatifs pour d'autres structures d'API
    if (mainMessage == 'Unknown error occurred') {
      final errorField = errorData['error'];
      if (errorField is String) {
        mainMessage = errorField;
      } else if (errorField is Map && errorField['message'] is String) {
        mainMessage = errorField['message'];
      }
    }

    final errorInfo = ErrorInfo(message: mainMessage, fieldErrors: fieldErrors, code: code, status: status);

    _logger.fine('Extracted error info: message=$mainMessage, fieldErrors=$fieldErrors, code=$code, status=$status');
    return errorInfo;
  }

  if (errorData is String) {
    _logger.fine('Error data is string: $errorData');
    return ErrorInfo(message: errorData);
  }

  _logger.fine('Unknown error data type: ${errorData.runtimeType}');
  return const ErrorInfo(message: 'Unknown error occurred');
}
