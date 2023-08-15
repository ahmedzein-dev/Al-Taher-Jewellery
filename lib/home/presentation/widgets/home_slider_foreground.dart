import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliderForeground extends StatelessWidget {
  final String imgPath;

  const HomeSliderForeground({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(
          20.0,
        ),
      ),
      child: Image.asset(
        imgPath,
        width: 1.sw,
        //fit: BoxFit.fill,
        fit: BoxFit.cover,
      ),
    );
  }
}
