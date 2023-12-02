import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';

class GoldPriceRowWidget extends StatelessWidget {
  final String label;
  final String price;

  const GoldPriceRowWidget({
    super.key,
    required this.label,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
      color: ColorManager.white.withOpacity(.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
