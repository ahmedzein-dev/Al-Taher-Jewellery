import 'package:altaher_jewellery/home/presentation/widgets/home_slider_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    Key? key,
    required this.imgUrl,
    required this.onErrorWidget,
    this.fit,
    this.width,
    this.height,
  }) : super(key: key);

  final String imgUrl;
  final Widget onErrorWidget;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      fit: fit ?? BoxFit.cover,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      placeholder: (context, url) => const HomeSliderShimmer(),
      errorWidget: (context, url, error) => onErrorWidget,
    );
  }
}
