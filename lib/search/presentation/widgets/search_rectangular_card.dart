import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:altaher_jewellery/core/managers/size_manager.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/text_styles_manager.dart';
import '../../../home/domain/entities/product/product_entity.dart';

class SearchRectangularCard extends StatelessWidget {
  final ProductEntity product;
  final VoidCallback onTab;

  const SearchRectangularCard({
    super.key,
    required this.product,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  AppRadius.borderRadius20.r,
                ),
                child: Image.asset(
                  product.imgUrl,
                  height: 90.h,
                ),
              ),
              Column(
                children: [
                  Text(
                    product.title,
                    style: TextStyleManager.black_20BOLD.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    '${product.weight}جرام',
                    style: TextStyleManager.black_16,
                  ),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    IconManager.favorite,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    '${product.price} LE',
                    style: TextStyleManager.black_16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
