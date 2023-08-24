import 'package:flutter/material.dart';

import '../../../home/domain/entities/product_entity.dart';
import 'product_item_card.dart';

class FavoriteProductsListItems extends StatelessWidget {
  final List<ProductEntity> products;

  const FavoriteProductsListItems({required this.products, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
