import 'package:altaher_jewellery/core/managers/text_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/asset_manager.dart';

class ContactUsCardWidget extends StatelessWidget {
  const ContactUsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(ImageManager.contactUsCardImage),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'الطاهر طه عوض',
                  textAlign: TextAlign.center,
                  style: TextStyleManager.black_24ALMARAI
                      .copyWith(fontSize: 32.sp),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '01009920801',
                      textAlign: TextAlign.center,
                      style: TextStyleManager.black_24ALMARAI
                          .copyWith(fontSize: 32.sp),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    const Icon(
                      Icons.call,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  'تمي الأمديد - شارع البوسطة',
                  textAlign: TextAlign.center,
                  style: TextStyleManager.black_24ALMARAI
                      .copyWith(fontSize: 32.sp),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
