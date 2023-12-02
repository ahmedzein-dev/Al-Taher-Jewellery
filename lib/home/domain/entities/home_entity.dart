import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:equatable/equatable.dart';

class HomeEntity extends Equatable {
  final List<ProductEntity> earrings;
  final List<ProductEntity> necklaces;
  final List<ProductEntity> rings;
  final List<ProductEntity> bars;
  final List<ProductEntity> bracelets;
  final List<ProductEntity> group;
  final List<ProductEntity> twins;
  final List<String> slider;

  const HomeEntity({
    required this.earrings,
    required this.necklaces,
    required this.rings,
    required this.bars,
    required this.bracelets,
    required this.group,
    required this.twins,
    required this.slider,
  });

  @override
  List<Object?> get props =>
      [earrings, necklaces, rings, bars, bracelets, group, twins, slider];
}
