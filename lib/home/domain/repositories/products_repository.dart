import 'package:altaher_jewellery/core/error/failures.dart';
import 'package:altaher_jewellery/home/domain/entities/home_entity.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProductsRepository {
  Future<Either<Failure, HomeEntity>> getAllProducts();

  Future<Either<Failure, List<ProductEntity>>> getLatestProducts();
}
