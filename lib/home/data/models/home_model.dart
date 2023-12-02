import 'package:altaher_jewellery/home/data/models/product_model.dart';

import '../../domain/entities/home_entity.dart';

class HomeModel extends HomeEntity {
  const HomeModel({
    required super.earrings,
    required super.necklaces,
    required super.rings,
    required super.bars,
    required super.bracelets,
    required super.slider,
    required super.group,
    required super.twins,
  });

  factory HomeModel.fromJson(Map json) {
    return HomeModel(
      earrings: ProductModel.modelFromSnapShot(json['earrings']),
      necklaces: ProductModel.modelFromSnapShot(json['necklaces']),
      rings: ProductModel.modelFromSnapShot(json['rings']),
      bars: ProductModel.modelFromSnapShot(json['bars']),
      bracelets: ProductModel.modelFromSnapShot(json['bracelets']),
      group: ProductModel.modelFromSnapShot(json['group']),
      twins: ProductModel.modelFromSnapShot(json['twins']),
      slider: getSliderImagesFromJson(json['slider']),
    );
  }

  static HomeModel modelFromSnapShot(snapShot) {
    HomeModel data = HomeModel.fromJson(snapShot['categories']);
    return data;
  }

  static List<String> getSliderImagesFromJson(Map json) {
    List<String> sliderImages = [];
    json.forEach((key, value) {
      sliderImages.add(value);
    });
    return sliderImages;
  }
}
