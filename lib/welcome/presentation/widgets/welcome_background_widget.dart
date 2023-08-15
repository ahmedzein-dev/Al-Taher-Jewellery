import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/managers/asset_manager.dart';

class WelcomeBackgroundWidget extends StatelessWidget {
  const WelcomeBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            height: .52.sh,
            width: 1.sw,
            child: SvgPicture.asset(
              ImageManager.welcomeTopLeftImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: .52.sh,
            width: 1.sw,
            child: SvgPicture.asset(
              ImageManager.welcomeBottomRightImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
            child: SizedBox(
              width: 1.sw,
              height: 1.sh,
            ),
          ),
        ),
      ],
    );
  }
}
