import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../managers/color_manager.dart';
import '../../managers/size_manager.dart';

class LoadingShimmer extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final BoxShape? shape;
  final List<BoxShadow>? boxShadows;

  const LoadingShimmer({
    Key? key,
    required this.width,
    required this.height,
    this.radius = AppRadius.borderRadius16,
    this.shape,
    this.boxShadows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: shape != null,
      replacement: SizedBox(
        width: width,
        height: height,
        child: Shimmer.fromColors(
          baseColor: ColorManager.primaryLight,
          highlightColor: ColorManager.primary,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: ColorManager.white,
              boxShadow: boxShadows,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        ),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Shimmer.fromColors(
          baseColor: ColorManager.primaryLight,
          highlightColor: ColorManager.primary,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: ColorManager.white,
              boxShadow: boxShadows,
              shape: shape ?? BoxShape.rectangle,
            ),
          ),
        ),
      ),
    );
  }
}
