import 'package:altaher_jewellery/core/error/error_handler.dart';
import 'package:altaher_jewellery/core/error/failures.dart';
import 'package:altaher_jewellery/home/data/data_sources/product_remote_data_source.dart';
import 'package:altaher_jewellery/home/domain/entities/home_entity.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:altaher_jewellery/home/domain/repositories/products_repository.dart';
import 'package:dartz/dartz.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductsRemoteDataSource productsRemoteDataSource;

  ProductsRepositoryImpl(this.productsRemoteDataSource);

  @override
  Future<Either<Failure, HomeEntity>> getAllProducts() async {
    try {
      final result = await productsRemoteDataSource.getAllProducts();
      return Right(result);
    } catch (exception) {
      return Left(
        ErrorHandler.mapExceptionToFailure(exception),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getLatestProducts() async {
    try {
      final result = await productsRemoteDataSource.getLatestProducts();
      return Right(result);
    } catch (exception) {
      return Left(
        ErrorHandler.mapExceptionToFailure(exception),
      );
    }
  }
}
