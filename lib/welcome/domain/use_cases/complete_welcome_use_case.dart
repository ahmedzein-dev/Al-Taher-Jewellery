import 'package:dartz/dartz.dart';
import 'package:altaher_jewellery/welcome/domain/repositories/welcome_repository.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_cases/base_use_case.dart';

class CompleteOnBoardingWelcomeUseCase
    extends BaseUseCase<NoParameters, NoOutput> {
  final WelcomeRepository repository;

  CompleteOnBoardingWelcomeUseCase(this.repository);

  @override
  Future<Either<Failure, NoOutput>> call(NoParameters input) async {
    return await repository.completeOnBoardingWelcome();
  }
}
