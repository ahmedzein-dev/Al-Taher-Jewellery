import 'package:altaher_jewellery/core/constants/constants.dart';
import 'package:altaher_jewellery/core/managers/route_manager.dart';
import 'package:altaher_jewellery/core/managers/size_manager.dart';
import 'package:altaher_jewellery/core/shared/widgets/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetailsHeader extends StatelessWidget {
  final String imgUrl;

  const ProductDetailsHeader({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(AppRadius.borderRadius20.r),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(AppRadius.borderRadius20.r),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: GestureDetector(
          onPanStart: (_) {
            Navigator.of(context).pushNamed(
              Routes.imagePreview,
              arguments: imgUrl,
            );
          },
          onTap: () {
            Navigator.of(context).pushNamed(
              Routes.imagePreview,
              arguments: imgUrl,
            );
          },
          child: SizedBox(
              width: 1.sw,
              height: 260.h,
              child: CachedNetworkImageWidget(
                imgUrl: imgUrl,
                onErrorWidget: kNetworkImageOnErrorWidget,
              )),
        ),
      ),
    );
  }
}
