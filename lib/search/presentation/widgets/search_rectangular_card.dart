import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:altaher_jewellery/core/managers/size_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/text_styles_manager.dart';
import '../../../core/shared/widgets/cached_network_image.dart';
import '../../../home/domain/entities/product_entity.dart';

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
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppRadius.borderRadius20.r,
                    ),
                    child: CachedNetworkImageWidget(
                      imgUrl: product.imgUrl,
                      height: 90.h,
                      width: 120.w,
                      onErrorWidget: kNetworkImageOnErrorWidget,
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  SizedBox(
                    height: 70.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: TextStyleManager.trBlack_20BOLD.copyWith(
                            height: 1.3,
                          ),
                        ),
                        Text(
                          '${product.weight} جرام',
                          style: TextStyleManager.trBlack_20BOLD.copyWith(
                            fontWeight: FontWeight.w400,
                            height: .4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      IconManager.favorite,
                    ),
                    // Text(
                    //   '${product.price} LE',
                    //   textDirection: TextDirection.ltr,
                    //   style: TextStyleManager.trBlack_20BOLD.copyWith(
                    //     fontWeight: FontWeight.w400,
                    //     fontSize: 16.sp,
                    //     height: .4,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
