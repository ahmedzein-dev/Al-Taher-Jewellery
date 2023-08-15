import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/enums.dart';

part 'exceptions.freezed.dart';

@freezed
class CustomException with _$CustomException implements Exception {
  const CustomException._();

  const factory CustomException.httpException(HttpErrorType httpErrorType) =
      _HttpException;

  const factory CustomException.loginException() = _LoginException;

  const factory CustomException.registerException() = _RegisterException;

  const factory CustomException.cacheException() = _CacheException;

  const factory CustomException.unKnownException([
    @Default('حدث خطأ ما') String message,
  ]) = _UnKnownException;
}
