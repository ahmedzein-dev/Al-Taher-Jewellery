import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../data/models/gold_model.dart';

abstract class CurrencyRepository {
  Future<Either<Failure, GoldModel>> getGoldPrice();
}
