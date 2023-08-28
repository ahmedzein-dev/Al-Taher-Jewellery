import 'package:altaher_jewellery/core/shared/widgets/product_item_card.dart';
import 'package:flutter/material.dart';

import '../../../home/domain/entities/product_entity.dart';

class ProductsGridView extends StatelessWidget {
  final List<ProductEntity> products;

  const ProductsGridView({
    required this.products,
    this.padding,
    super.key,
  });

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .95,
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItemCard(
          allProducts: products,
          width: 150, //145 , 120
          height: 120,
          product: products[index],
        );
      },
    );
  }
}
