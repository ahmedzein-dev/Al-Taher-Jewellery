import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'product_entity.g.dart';

@HiveType(typeId: 0)
class ProductEntity extends HiveObject with EquatableMixin {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String imgUrl;
  @HiveField(3)
  final String weight;
  @HiveField(4)
  final String description;

  ProductEntity({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.weight,
    required this.description,
  });

  ProductEntity copyWith({
    String? id,
    String? title,
    String? imgUrl,
    String? weight,
    String? description,
    bool? isFavorite,

    // List<Post>? searchedPosts,
  }) {
    return ProductEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      imgUrl: imgUrl ?? this.imgUrl,
      weight: weight ?? this.weight,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props => [id, title, imgUrl, weight, description];
}
//
// final products = [
//   const ProductEntity(
//     id: '9',
//     title: 'غويشة',
//     imgUrl: ImageManager.bracelet,
//     price: '44725',
//     weight: '25',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '10',
//     title: 'خاتم',
//     imgUrl: ImageManager.ring,
//     price: '24725',
//     weight: '10',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '11',
//     title: 'حلق',
//     imgUrl: ImageManager.earring,
//     price: '10725',
//     weight: '5',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '12',
//     title: 'سبيكة',
//     imgUrl: ImageManager.bar,
//     price: '94725',
//     weight: '50',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
// ];
//
// final products1 = [
//   const ProductEntity(
//     id: '1',
//     title: 'خاتم',
//     imgUrl: ImageManager.ring,
//     price: '5000',
//     weight: '5',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '2',
//     title: 'خاتم',
//     imgUrl: ImageManager.ring,
//     price: '6000',
//     weight: '6',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '3',
//     title: 'خاتم',
//     imgUrl: ImageManager.ring,
//     price: '7000',
//     weight: '7',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '4',
//     title: 'خاتم',
//     imgUrl: ImageManager.ring,
//     price: '8000',
//     weight: '8',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
// ];
// final products2 = [
//   const ProductEntity(
//     id: '5',
//     title: 'غويشة',
//     imgUrl: ImageManager.bracelet,
//     price: '34725',
//     weight: '15',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '6',
//     title: 'غويشة',
//     imgUrl: ImageManager.bracelet,
//     price: '45725',
//     weight: '16',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '7',
//     title: 'غويشة',
//     imgUrl: ImageManager.bracelet,
//     price: '56725',
//     weight: '17',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
//   const ProductEntity(
//     id: '8',
//     title: 'غويشة',
//     imgUrl: ImageManager.bracelet,
//     price: '68725',
//     weight: '18',
//     description: 'هنا وصف للصورة اعلاه توضح تفاصيل اكثر للمتصفح',
//   ),
// ];
