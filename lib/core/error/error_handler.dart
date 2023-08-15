import 'exceptions.dart';
import 'failures.dart';

class ErrorHandler {
  static Failure mapExceptionToFailure(
    dynamic error, {
    String? message,
  }) {
    if (error is CustomException) {
      return error.when(
        httpException: (httpError) => Failure.httpFailure(httpError),
        loginException: () => const Failure.loginFailure(),
        registerException: () => const Failure.registerFailure(),
        cacheException: () => const Failure.cachedFailure(),
        unKnownException: (message) => Failure.unKnownFailure(message),
      );
    }

    return Failure.unKnownFailure(message ?? 'حدث خطأ ما');
  }
}
