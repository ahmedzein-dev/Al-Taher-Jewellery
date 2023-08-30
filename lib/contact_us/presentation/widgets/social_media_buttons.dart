import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/constants/constants.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/color_manager.dart';
import 'social_card.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SocialCard(
            imgPath: IconManager.whatsApp,
            color: ColorManager.whatsAppColor,
            onTab: () async {
              if (await canLaunchUrl(Uri.parse(
                AppConstants.whatsappUrl.replaceAll('number', '+201009920801'),
              ))) {
                await launchUrl(
                  Uri.parse(
                    AppConstants.whatsappUrl
                        .replaceAll('number', '+201009920801'),
                  ),
                );
              }
            },
          ),
          SocialCard(
            imgPath: IconManager.phone,
            onTab: () async {
              if (await canLaunchUrl(Uri.parse(AppConstants.contactUrl
                  .replaceAll('number', '+201009920801')))) {
                await launchUrl(
                  Uri.parse(
                    AppConstants.contactUrl
                        .replaceAll('number', '+201009920801'),
                  ),
                );
              }
            },
          ),
          SocialCard(
            imgPath: IconManager.facebook,
            color: ColorManager.facebookColor,
            fit: BoxFit.cover,
            onTab: () async {
              if (await canLaunchUrl(Uri.parse(AppConstants.facebookUrl
                  .replaceAll('id', '100008412156566')))) {
                await launchUrl(Uri.parse(
                  AppConstants.facebookUrl.replaceAll('id', '100008412156566'
                      //'100086664755413',
                      ),
                ));
              }
            },
          ),
        ],
      ),
    );
  }
}
