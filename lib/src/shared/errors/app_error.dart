import 'default_error_messages.dart';

abstract class AppError {
  final String slug;
  final String msg;
  final String stackTrace;

  AppError({
    this.slug = '',
    this.msg = '',
    this.stackTrace = '',
  });

  @override
  bool operator ==(other) {
    return (other.runtimeType == runtimeType) &&
        (other as AppError).slug == slug;
  }
}

class AppUnknownError extends AppError {
  AppUnknownError({
    String slug = '',
    String msg = DefaultErrorMessages.unknownError,
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );

  @override
  String toString() => '''[AppUnknownError]: {
          slug: $slug,
          msg: $msg,
          stackTrace: $stackTrace,
        }''';
}

class ParseError extends AppError {
  ParseError({
    String slug = '',
    String msg = DefaultErrorMessages.unknownError,
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );

  @override
  String toString() => '''[ParseError]: {
          slug: $slug,
          msg: $msg,
          stackTrace: $stackTrace,
        }''';
}

class EntityNotFitError extends AppError {
  EntityNotFitError({
    String slug = '',
    String msg = DefaultErrorMessages.unknownError,
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );

  @override
  String toString() => '''[EntityNotFitError]: {
          slug: $slug,
          msg: $msg,
          stackTrace: $stackTrace,
        }''';
}

class FailedToShareError extends AppError {
  FailedToShareError({
    String slug = '',
    String msg = DefaultErrorMessages.unknownError,
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );

  @override
  String toString() => '''[FailedToShareError]: {
          slug: $slug,
          msg: $msg,
          stackTrace: $stackTrace,
        }''';
}

class TokenNotFoundError extends AppError {
  TokenNotFoundError({
    String slug = '',
    String msg = DefaultErrorMessages.unknownError,
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );

  @override
  String toString() => '''[NotFoundError]: {
          slug: $slug,
          msg: $msg,
          stackTrace: $stackTrace,
        }''';
}
