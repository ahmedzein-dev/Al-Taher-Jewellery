import 'package:dartz/dartz.dart';

import '../error/failures.dart';

abstract class BaseUseCase<Input, Output> {
  Future<Either<Failure, Output>> call(Input input);
}

class NoParameters {
  const NoParameters();
}

class NoOutput {
  const NoOutput();
}
