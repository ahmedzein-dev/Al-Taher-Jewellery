import 'package:altaher_jewellery/home/data/models/home_model.dart';
import 'package:altaher_jewellery/home/data/models/product_model.dart';

abstract class ProductsRemoteDataSource {
  Future<HomeModel> getAllProducts();

  Future<List<ProductModel>> getLatestProducts();
}
