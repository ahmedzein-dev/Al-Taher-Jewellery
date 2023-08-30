import 'package:altaher_jewellery/contact_us/presentation/widgets/profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'back_button.dart';
import 'contact_us_custom_painter.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sw * 0.05 + 160.r,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(1.sw, (1.sw * 0.18).toDouble()),
            painter: ContactUsCustomPainter(),
          ),
          const ProfileImageWidget(),
          const BackButtonWidget(),
        ],
      ),
    );
  }
}
