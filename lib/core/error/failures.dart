import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/enums.dart';
import 'custom_error.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();

  const factory Failure.httpFailure(HttpErrorType httpErrorType) = _HttpFailure;

  const factory Failure.loginFailure() = _LoginFailure;

  const factory Failure.registerFailure() = _RegisterFailure;

  const factory Failure.cachedFailure() = _CacheFailure;

  const factory Failure.unKnownFailure([
    @Default('حدث خطأ ما') String message,
  ]) = _UnKnownFailure;

  CustomError toError() {
    return when(
      httpFailure: (httpError) {
        switch (httpError) {
          case HttpErrorType.badRequest:
            return const CustomError(
              title: 'Bad Request',
              message: 'Bad Request',
            );
          case HttpErrorType.unauthorized:
            return const CustomError(
              title: 'Unauthorized',
              message: 'Unauthorized',
            );
          case HttpErrorType.forbidden:
            return const CustomError(
              title: 'Forbidden',
              message: 'Forbidden',
            );
          case HttpErrorType.notFound:
            return const CustomError(
              title: 'Not Found',
              message: 'Not Found',
            );
          case HttpErrorType.requestTimeout:
            return const CustomError(
              title: 'Request Timeout',
              message: 'Request Timeout',
            );
          case HttpErrorType.internalServerError:
            return const CustomError(
              title: 'Internal Server Error',
              message: 'Internal Server Error',
            );
          case HttpErrorType.unexpectedError:
            return const CustomError(
              title: 'Unexpected Error',
              message: 'Unexpected Error',
            );
        }
      },
      loginFailure: () {
        return const CustomError(
          title: 'اسم المستخدم او كلمة المرور غير صحيحة',
          message: 'اسم المستخدم او كلمة المرور غير صحيحة',
        );
      },
      registerFailure: () {
        return const CustomError(
          title: 'يوجد خطأ في اسم المستخدم او البريد الالكتروني',
          message: 'يوجد خطأ في اسم المستخدم او البريد الالكتروني',
        );
      },
      cachedFailure: () {
        return const CustomError(
          title: 'Cache Error',
          message: 'Cache Error',
        );
      },
      unKnownFailure: (String message) {
        return CustomError(
          title: 'حدث خطأ ما',
          message: message,
        );
      },
    );
  }
}
