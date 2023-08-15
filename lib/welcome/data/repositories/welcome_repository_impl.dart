import 'package:dartz/dartz.dart';
import 'package:altaher_jewellery/welcome/domain/repositories/welcome_repository.dart';

import '../../../../core/error/error_handler.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/use_cases/base_use_case.dart';
import '../data_sources/local/data_sources/welcome_cache_data_source.dart';

class WelcomeRepositoryImpl implements WelcomeRepository {
  final WelcomeCacheDataSource cacheDataSource;

  WelcomeRepositoryImpl(
    this.cacheDataSource,
  );

  @override
  Either<Failure, NoOutput> checkWelcomeStatus() {
    try {
      cacheDataSource.checkWelcomeStatus();
      return const Right(
        NoOutput(),
      );
    } catch (_) {
      return const Left(
        Failure.cachedFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, NoOutput>> completeOnBoardingWelcome() async {
    try {
      cacheDataSource.completeOnBoardingWelcome();
      return const Right(
        NoOutput(),
      );
    } catch (error) {
      return Left(
        ErrorHandler.mapExceptionToFailure(error),
      );
    }
  }
}
