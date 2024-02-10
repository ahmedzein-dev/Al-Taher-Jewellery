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

enum Categories {
  rings('خاتم'),
  necklaces('سلسلة'),
  bars('سبيكة'),
  bracelets('غويشة'),
  earrings('حلق'),
  twins('توينز'),
  debla('دبلة'),
  group('طقم'),
  notFound('notFound');

  const Categories(this.title);

  final String title;

  String getTitle() {
    switch (this) {
      case Categories.rings:
        return 'rings';
      case Categories.necklaces:
        return 'necklaces';
      case Categories.bars:
        return 'bars';
      case Categories.bracelets:
        return 'bracelets';
      case Categories.earrings:
        return 'earrings';
      case Categories.debla:
        return 'debla';
      case Categories.twins:
        return 'twins';
      case Categories.group:
        return 'group';
      case Categories.notFound:
        return 'notFound';
    }
  }
}

enum FilterState {
  filtering,
  done,
}
