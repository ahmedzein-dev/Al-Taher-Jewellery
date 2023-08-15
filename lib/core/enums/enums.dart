enum RequestState {
  loading,
  error,
  success,
}

enum HttpErrorType {
  badRequest(400),
  unauthorized(401),
  forbidden(403),
  notFound(404),
  requestTimeout(408),
  internalServerError(501),
  unexpectedError(0);

  const HttpErrorType(this.code);

  final int code;
}

enum Gender {
  male,
  female;

  int getValue() {
    switch (this) {
      case Gender.male:
        return 0;
      case Gender.female:
        return 1;
    }
  }
}

enum FilterState {
  filtering,
  done,
}
