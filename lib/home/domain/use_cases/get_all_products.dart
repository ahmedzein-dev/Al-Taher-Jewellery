import 'package:altaher_jewellery/core/error/failures.dart';
import 'package:altaher_jewellery/home/domain/entities/home_entity.dart';
import 'package:altaher_jewellery/home/domain/repositories/products_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllProductsUseCase {
  final ProductsRepository productsRepository;

  GetAllProductsUseCase(this.productsRepository);

  Future<Either<Failure, HomeEntity>> call() async {
    return await productsRepository.getAllProducts();
  }
}
