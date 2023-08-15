import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class WelcomeDescriptionText extends StatelessWidget {
  const WelcomeDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: const DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, -2),
                  blurRadius: 20,
                  spreadRadius: 7,
                ),
              ],
            ),
            child: Icon(
              Icons.diamond_outlined,
              color: ColorManager.white,
              size: 20,
            ),
          ),
        ),
        Text(
          'تألقى بأناقة',
          style: TextStyleManager.yellow_24ALMARAI.copyWith(
            height: .15,
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Text(
          'مجموعاتنا الفريدة من',
          style: TextStyleManager.yellow_24ALMARAI,
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'المجوهرات',
              style: TextStyleManager.white_24ALMARAI,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              'الراقية',
              style: TextStyleManager.yellow_24ALMARAI,
            ),
          ],
        ),
      ],
    );
  }
}
