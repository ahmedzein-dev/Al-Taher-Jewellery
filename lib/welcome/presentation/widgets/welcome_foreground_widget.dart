import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/asset_manager.dart';
import 'welcome_description_text.dart';
import 'welcome_rounded_button.dart';

class WelcomeForegroundWidget extends StatelessWidget {
  const WelcomeForegroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            ImageManager.taherAppLogo,
            height: 200.h,
          ),
          SizedBox(
            height: 30.h,
          ),
          const WelcomeDescriptionText(),
          SizedBox(
            height: 50.h,
          ),
          const WelcomeRoundedButton(),
          SizedBox(
            height: 60.h,
          ),
        ],
      ),
    );
  }
}
