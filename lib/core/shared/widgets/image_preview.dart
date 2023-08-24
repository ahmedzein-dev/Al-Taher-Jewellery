import 'package:altaher_jewellery/core/constants/constants.dart';
import 'package:altaher_jewellery/core/shared/widgets/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePreview extends StatelessWidget {
  final String imgUrl;

  const ImagePreview({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        clipBehavior: Clip.none,
        minScale: 1,
        maxScale: 4,
        child: SizedBox(
          height: 1.sh,
          child: CachedNetworkImageWidget(
            imgUrl: imgUrl,
            onErrorWidget: kNetworkImageOnErrorWidget,
          ),
        ),
      ),
    );
  }
}
