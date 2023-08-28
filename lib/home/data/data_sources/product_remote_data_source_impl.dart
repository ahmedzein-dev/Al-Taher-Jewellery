import 'package:altaher_jewellery/core/error/exceptions.dart';
import 'package:altaher_jewellery/home/data/models/home_model.dart';
import 'package:altaher_jewellery/home/data/models/product_model.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:firebase_database/firebase_database.dart';

import 'product_remote_data_source.dart';

class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  final FirebaseDatabase firebaseDatabaseInstance;

  ProductsRemoteDataSourceImpl(this.firebaseDatabaseInstance);

  late HomeModel homeModel;

  @override
  Future<HomeModel> getAllProducts() async {
    try {
      final DatabaseReference databaseReference =
          firebaseDatabaseInstance.ref();
      DatabaseEvent event = await databaseReference.once();
      Map? data = event.snapshot.value as Map?;
      if (data == null || data.isEmpty) {
        throw const CustomException.unKnownException(
            'لا توجد منتجات متوفرة الان من فضلك حاول في وقت لاحق');
      }
      homeModel = HomeModel.modelFromSnapShot(data);
      return homeModel;
    } catch (exception) {
      rethrow;
    }
  }

  @override
  Future<List<ProductModel>> getLatestProducts() async {
    List<ProductModel> latestProducts = [];
    latestProducts.addAll(getCategoryLatestProducts(homeModel.bracelets, 4));
    latestProducts.addAll(getCategoryLatestProducts(homeModel.necklaces, 4));
    latestProducts.addAll(getCategoryLatestProducts(homeModel.rings, 4));
    latestProducts.addAll(getCategoryLatestProducts(homeModel.earrings, 4));
    latestProducts.addAll(getCategoryLatestProducts(homeModel.bars, 2));
    if (latestProducts.isEmpty) {
      throw const CustomException.unKnownException(
          'لا توجد منتجات متوفرة  حديثة الان من فضلك حاول في وقت لاحق');
    }
    return latestProducts;
  }
}

List<ProductModel> getCategoryLatestProducts(
    List<ProductEntity> category, int productCount) {
  List<ProductModel> categoryLatestProducts = [];
  for (var i = 0; i < productCount; i++) {
    categoryLatestProducts.add(
      ProductModel(
        id: category[i].id,
        title: category[i].title,
        imgUrl: category[i].imgUrl,
        weight: category[i].weight,
        description: category[i].description,
      ),
    );
  }
  return categoryLatestProducts;
}
