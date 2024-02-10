import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../managers/asset_manager.dart';
import '../../managers/color_manager.dart';
import '../../managers/text_styles_manager.dart';

class ProductItemCardShimmer extends StatelessWidget {
  final String productTitle;

  const ProductItemCardShimmer({super.key, required this.productTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.fromLTRB(4, 4, 4, 20),
      color: ColorManager.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Column(
          children: [
            SizedBox(
              width: 125.w,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              width: 125.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productTitle,
                    style: TextStyleManager.black_18BOLD.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SvgPicture.asset(
                    IconManager.favorite,
                    colorFilter: const ColorFilter.mode(
                      ColorManager.grey,
                      BlendMode.srcIn,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
