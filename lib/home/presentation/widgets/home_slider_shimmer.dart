import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeSliderShimmer extends StatelessWidget {
  const HomeSliderShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
