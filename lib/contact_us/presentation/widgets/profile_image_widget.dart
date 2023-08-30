import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/constants.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/shared/widgets/cached_network_image.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 1.sw * 0.05,
      left: (1.sw - 160.r) / 2,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: ColorManager.primary,
              blurRadius: 2,
              spreadRadius: 0,
              offset: Offset(0, -2), // Shadow position
            ),
          ],
        ),
        child: ClipOval(
          child: SizedBox.fromSize(
            size: Size.fromRadius(80.r), // Image radius
            child: const CachedNetworkImageWidget(
                imgUrl:
                    'https://firebasestorage.googleapis.com/v0/b/taher-jewellery.appspot.com/o/taher.jpeg?alt=media&token=1319a691-02f6-4da2-830a-0a0461727484',
                onErrorWidget: kNetworkImageOnErrorWidget
                // backgroundImage: const AssetImage(ImageManager.taherProfile),
                // radius: 75.r,
                ),
          ),
        ),
      ),
    );
  }
}
