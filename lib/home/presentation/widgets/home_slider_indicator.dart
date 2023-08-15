import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/managers/color_manager.dart';

class HomeSliderIndicator extends StatelessWidget {
  final int currentIndex;

  const HomeSliderIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    // return BlocSelector<HomeCubit, HomeState, int>(
    //   selector: (state) {
    //     return state.bannerActiveIndex;
    //   },
    //   builder: (context, index) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: 3,
      axisDirection: Axis.horizontal,
      textDirection: TextDirection.rtl,
      effect: ExpandingDotsEffect(
        spacing: 8.0,
        dotWidth: 10.0,
        dotHeight: 10.0,
        expansionFactor: 2,
        paintStyle: PaintingStyle.fill,
        dotColor: ColorManager.grey.withOpacity(.3),
        activeDotColor: ColorManager.primary,
      ),
    );
    //   },
    // );
  }
}
