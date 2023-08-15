import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/use_cases/base_use_case.dart';

abstract class WelcomeRepository {
  Either<Failure, NoOutput> checkWelcomeStatus();
  Future<Either<Failure, NoOutput>> completeOnBoardingWelcome();
}
