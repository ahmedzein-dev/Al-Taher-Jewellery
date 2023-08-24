import 'package:altaher_jewellery/core/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/product_item_card.dart';
import '../../../home/domain/entities/product_entity.dart';

class CategoryProducts extends StatelessWidget {
  final String title;
  final List<ProductEntity> products;

  const CategoryProducts({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithTitleAndActions(
        context,
        title,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: SizedBox(
              height: 1.sh,
              width: 1.sw,
              child: SvgPicture.asset(
                ImageManager.categoryProductsBackgroundLines,
                fit: BoxFit.fill,
              ),
            ),
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .95,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.padding10,
              vertical: AppPadding.padding16,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductItemCard(
                allProducts: products,
                width: 150,
                height: 120,
                product: products[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
