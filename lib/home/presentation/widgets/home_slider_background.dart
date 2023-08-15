import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliderBackground extends StatelessWidget {
  const HomeSliderBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 3.115,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.r,
          ),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF23926F),
                Color(0xFF24687D),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              width: 1.sw,
            ),
          ),
        ),
      ),
    );
  }
}
