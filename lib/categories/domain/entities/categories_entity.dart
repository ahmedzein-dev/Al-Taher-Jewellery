import 'package:equatable/equatable.dart';
import 'package:altaher_jewellery/home/domain/entities/product/product_entity.dart';

import '../../../core/managers/asset_manager.dart';

class CategoriesEntity extends Equatable {
  final List<ProductEntity> bracelets;
  final List<ProductEntity> bars;
  final List<ProductEntity> rings;
  final List<ProductEntity> earrings;
  final List<ProductEntity> necklaces;

  const CategoriesEntity({
    required this.bracelets,
    required this.bars,
    required this.rings,
    required this.earrings,
    required this.necklaces,
  });

  @override
  List<Object?> get props => [bracelets, bars, rings, earrings, necklaces];
}

CategoriesEntity categories = const CategoriesEntity(
  bracelets: [
    ProductEntity(
      id: 1,
      title: 'غويشة',
      imgUrl: ImageManager.bracelet,
      price: '34725',
      weight: '25',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 2,
      title: 'غويشة',
      imgUrl: ImageManager.bracelet,
      price: '34725',
      weight: '5',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 3,
      title: 'غويشة',
      imgUrl: ImageManager.bracelet,
      price: '34725',
      weight: '10',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 4,
      title: 'غويشة',
      imgUrl: ImageManager.bracelet,
      price: '34725',
      weight: '15',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
  ],
  bars: [
    ProductEntity(
      id: 1,
      title: 'سبيكة',
      imgUrl: ImageManager.bar,
      price: '100000',
      weight: '30',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 2,
      title: 'سبيكة',
      imgUrl: ImageManager.bar,
      price: '100000',
      weight: '40',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 3,
      title: 'سبيكة',
      imgUrl: ImageManager.bar,
      price: '100000',
      weight: '50',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 4,
      title: 'سبيكة',
      imgUrl: ImageManager.bar,
      price: '100000',
      weight: '20',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
  ],
  rings: [
    ProductEntity(
      id: 1,
      title: 'خاتم',
      imgUrl: ImageManager.ring,
      price: '5000',
      weight: '10',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 2,
      title: 'خاتم',
      imgUrl: ImageManager.ring,
      price: '5000',
      weight: '25',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 3,
      title: 'خاتم',
      imgUrl: ImageManager.ring,
      price: '5000',
      weight: '15',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 4,
      title: 'خاتم',
      imgUrl: ImageManager.ring,
      price: '5000',
      weight: '5',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
  ],
  earrings: [
    ProductEntity(
      id: 1,
      title: 'حلق',
      imgUrl: ImageManager.earring,
      price: '4725',
      weight: '25',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 2,
      title: 'حلق',
      imgUrl: ImageManager.earring,
      price: '4725',
      weight: '15',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 3,
      title: 'حلق',
      imgUrl: ImageManager.earring,
      price: '4725',
      weight: '10',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 4,
      title: 'حلق',
      imgUrl: ImageManager.earring,
      price: '4725',
      weight: '5',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
  ],
  necklaces: [
    ProductEntity(
      id: 1,
      title: 'سلسلة',
      imgUrl: ImageManager.necklace,
      price: '44725',
      weight: '10',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 2,
      title: 'سلسلة',
      imgUrl: ImageManager.necklace,
      price: '44725',
      weight: '30',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 3,
      title: 'سلسلة',
      imgUrl: ImageManager.necklace,
      price: '44725',
      weight: '15',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
    ProductEntity(
      id: 4,
      title: 'سلسلة',
      imgUrl: ImageManager.necklace,
      price: '44725',
      weight: '20',
      description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
    ),
  ],
);
