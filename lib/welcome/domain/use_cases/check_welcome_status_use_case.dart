import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../core/use_cases/base_use_case.dart';
import '../repositories/welcome_repository.dart';

class CheckWelcomeStatusUseCase extends BaseUseCase<NoParameters, NoOutput> {
  final WelcomeRepository repository;

  CheckWelcomeStatusUseCase(this.repository);

  @override
  Future<Either<Failure, NoOutput>> call(NoParameters input) async {
    return repository.checkWelcomeStatus();
  }
}
