import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/managers/text_styles_manager.dart';
import 'favorite_icon_widget.dart';

class ProductDetailsTitleRectangularCard extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsTitleRectangularCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.padding20.w,
      ),
      child: Card(
        elevation: 8,
        color: ColorManager.rectangleCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius20.r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppPadding.padding12.h,
            horizontal: AppPadding.padding24.w,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.title,
                    style: TextStyleManager.black_20BOLD.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  FavoriteIconWidget(product: product),
                ],
              ),
              Row(
                children: [
                  Text(
                    product.weight.isNotEmpty
                        ? '${product.weight}جرام'
                        : 'وزن هذا المتنج غير متاح الان.',
                    style: TextStyleManager.black_16,
                  ),
                  // SizedBox(
                  //   width: 45.w,
                  // ),
                  // if (product.price.isNotEmpty)
                  //   Text(
                  //     '${product.price} LE',
                  //     style: TextStyleManager.black_16,
                  //   ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
