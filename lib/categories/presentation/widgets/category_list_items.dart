import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:flutter/material.dart';

import '../../../core/shared/widgets/horizontal_list_items.dart';
import '../../../home/domain/entities/product_entity.dart';
import 'category_background.dart';

class CategoryListItems extends StatelessWidget {
  final List<ProductEntity> products;
  final String title;
  final Color listItemsBackground;
  final Color cardItemBackground;

  const CategoryListItems({
    Key? key,
    required this.title,
    required this.products,
    this.cardItemBackground = ColorManager.white,
    this.listItemsBackground = ColorManager.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CategoryBackground(
      title: title,
      color: listItemsBackground,
      products: products,
      child: HorizontalListItems(
        color: cardItemBackground,
        allProducts: products,
        //     color: ColorManager.productItemCard,
      ),
    );
  }
}
