import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/managers/size_manager.dart';

class SocialCard extends StatelessWidget {
  final Color color;
  final String imgPath;
  final BoxFit fit;
  final double size;
  final double borderRadius;
  final VoidCallback onTab;

  const SocialCard({
    super.key,
    this.color = ColorManager.white,
    this.fit = BoxFit.scaleDown,
    this.size = 70,
    this.borderRadius = AppRadius.borderRadius20,
    required this.imgPath,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: size.w,
        height: size.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius.r),
          color: color,
        ),
        child: SvgPicture.asset(
          imgPath,
          fit: fit,
        ),
      ),
    );
  }
}
