import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePreview extends StatelessWidget {
  final String imgPath;

  const ImagePreview({
    super.key,
    required this.imgPath,
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
          child: Image.asset(
            imgPath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
