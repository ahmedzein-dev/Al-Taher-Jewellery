import 'package:dartz/dartz.dart';

import '../../../core/error/error_handler.dart';
import '../../../core/error/failures.dart';
import '../../domain/repositories/currency_repository.dart';
import '../data_sources/currency_firebase_service.dart';
import '../models/gold_model.dart';

class CurrencyRepositoryImpl implements CurrencyRepository {
  final GoldPriceFirebaseService goldPriceFirebaseService;

  CurrencyRepositoryImpl({
    required this.goldPriceFirebaseService,
  });

  @override
  Future<Either<Failure, GoldModel>> getGoldPrice() async {
    try {
      final result = await goldPriceFirebaseService.getGoldPrice();
      return Right(result);
    } catch (exception) {
      return Left(
        ErrorHandler.mapExceptionToFailure(exception),
      );
    }
  }
}
