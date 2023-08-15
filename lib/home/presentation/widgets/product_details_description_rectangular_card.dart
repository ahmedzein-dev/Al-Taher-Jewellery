import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:altaher_jewellery/home/domain/entities/product/product_entity.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class ProductDetailsDescriptionRectangularCard extends StatelessWidget {
  final ProductEntity product;

  const ProductDetailsDescriptionRectangularCard(
      {super.key, required this.product});

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
          child: SizedBox(
            width: 1.sw,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'الوصف',
                  style: TextStyleManager.black_20BOLD.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  product.description,
                  style: TextStyleManager.black_16,
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
