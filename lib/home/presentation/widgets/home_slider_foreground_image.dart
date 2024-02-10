import 'package:altaher_jewellery/home/presentation/widgets/home_slider_shimmer.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/shared/widgets/cached_network_image.dart';

class HomeSliderForegroundImage extends StatelessWidget {
  final String imgUrl;
  final bool isLoading;

  const HomeSliderForegroundImage({
    super.key,
    required this.imgUrl,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      child: isLoading
          ? const HomeSliderShimmer()
          : CachedNetworkImageWidget(
              imgUrl: imgUrl,
              onErrorWidget: kNetworkImageOnErrorWidget,
            ),
    );
  }
}
