import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/contact_us_card_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/social_media_buttons.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondary,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            const ContactUsCardWidget(),
            const Spacer(),
            const SocialMediaButtons(),
            SizedBox(
              height: 25.h,
            ),
          ],
        ),
      ),
    );
  }
}
