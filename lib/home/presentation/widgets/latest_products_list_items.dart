import 'package:altaher_jewellery/core/shared/widgets/products_grid_view.dart';
import 'package:flutter/material.dart';

import '../../../home/domain/entities/product_entity.dart';

class LatestProductsListItems extends StatelessWidget {
  final List<ProductEntity> products;

  const LatestProductsListItems({required this.products, super.key});

  @override
  Widget build(BuildContext context) {
    return ProductsGridView(
      products: products,
    );
  }
}
