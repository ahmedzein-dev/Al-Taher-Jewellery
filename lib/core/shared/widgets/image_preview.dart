import 'package:altaher_jewellery/core/constants/constants.dart';
import 'package:altaher_jewellery/core/shared/widgets/cached_network_image.dart';
import 'package:altaher_jewellery/core/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../managers/color_manager.dart';

class ImagePreview extends StatelessWidget {
  final String imgUrl;

  const ImagePreview({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTransparentAppBar(
        hasBackButton: true,
        context: context,
      ),
      backgroundColor: ColorManager.black,
      body: Center(
        child: InteractiveViewer(
          clipBehavior: Clip.none,
          minScale: 1,
          maxScale: 10,
          child: CachedNetworkImageWidget(
            imgUrl: imgUrl,
            fit: BoxFit.contain,
            onErrorWidget: kNetworkImageOnErrorWidget,
          ),
        ),
      ),
    );
  }
}
