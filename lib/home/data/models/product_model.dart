import '../../domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required super.id,
    required super.title,
    required super.imgUrl,
    required super.weight,
    required super.description,
  });

  factory ProductModel.fromJson(String id, Map json) {
    return ProductModel(
      id: id,
      description: json['description'] ?? '',
      imgUrl: json['imgUrl'] ?? '',
      title: json['title'] ?? '',
      weight: json['weight'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'imgUrl': imgUrl,
      'title': title,
      'weight': weight,
    };
  }

  static List<ProductModel> modelFromSnapShot(Map snapShot) {
    List<ProductModel> products = [];
    snapShot.forEach((key, value) {
      products.add(
        ProductModel.fromJson(
          key,
          value,
        ),
      );
    });
    return products;
  }
}
