import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/asset_manager.dart';

class LatestProductsBackgroundLines extends StatelessWidget {
  const LatestProductsBackgroundLines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: SvgPicture.asset(
          ImageManager.popularProductsBackgroundImageSvg,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
