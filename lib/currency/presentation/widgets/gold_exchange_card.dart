import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:altaher_jewellery/core/managers/size_manager.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class GoldExchangeCard extends StatelessWidget {
  final String title;

  const GoldExchangeCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyleManager.black_20BOLD.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.padding16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        ImageManager.karat_24,
                        width: 60,
                        height: 60,
                      ),
                      Text(
                        '2611 LE',
                        style: TextStyleManager.black_18,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        ImageManager.karat_21,
                        width: 60,
                        height: 60,
                      ),
                      Text(
                        '2285 LE',
                        style: TextStyleManager.black_18,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        ImageManager.karat_18,
                        width: 60,
                        height: 60,
                      ),
                      Text(
                        '1959 LE',
                        style: TextStyleManager.black_18,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
