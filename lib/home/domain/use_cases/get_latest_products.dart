import 'package:altaher_jewellery/core/error/failures.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

import '../repositories/products_repository.dart';

class GetLatestProductsUseCase {
  final ProductsRepository productsRepository;

  GetLatestProductsUseCase(this.productsRepository);

  Future<Either<Failure, List<ProductEntity>>> call() async {
    return await productsRepository.getLatestProducts();
  }
}
