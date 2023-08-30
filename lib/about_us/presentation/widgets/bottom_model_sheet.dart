import 'package:altaher_jewellery/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../contact_us/presentation/widgets/social_card.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class BottomModelSheet extends StatelessWidget {
  const BottomModelSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            'فتح عن طريق',
            style: TextStyleManager.trBlack_20BOLD.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 81.0.w),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomSheetItem(
                  url: AppConstants.whatsappUrl,
                  title: 'الواتساب',
                  imgPath: IconManager.whatsApp,
                  color: ColorManager.whatsAppColor,
                ),
                BottomSheetItem(
                  url: AppConstants.contactUrl,
                  title: 'الاتصال',
                  imgPath: IconManager.phone,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.padding30.h),
            child: SizedBox(
              width: 1.sw,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.dividerColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      25.r,
                    ),
                  ),
                ),
                child: Text(
                  'الغاء',
                  style: TextStyleManager.trBlack_20BOLD.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 35.h,
          )
        ],
      ),
    );
  }
}

class BottomSheetItem extends StatelessWidget {
  final String url;
  final String title;
  final String imgPath;
  final Color color;

  const BottomSheetItem({
    super.key,
    required this.url,
    required this.title,
    required this.imgPath,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialCard(
          imgPath: imgPath,
          color: color,
          borderRadius: AppRadius.borderRadius12,
          size: 45,
          onTab: () async {
            if (await canLaunchUrl(
                Uri.parse(url.replaceAll('number', '+201090127149')))) {
              await launchUrl(
                Uri.parse(
                  url.replaceAll('number', '+201090127149'),
                ),
              );
            }
          },
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          title,
          style: TextStyleManager.trBlack_20.copyWith(
            fontSize: 14,
            color: ColorManager.white,
          ),
        )
      ],
    );
  }
}
