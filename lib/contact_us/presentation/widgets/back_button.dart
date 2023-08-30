import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 1.sw * 0.105,
      right: 25.w,
      child: InkWell(
        onTap: () => Navigator.maybePop(context),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: ColorManager.primary,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: ColorManager.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
