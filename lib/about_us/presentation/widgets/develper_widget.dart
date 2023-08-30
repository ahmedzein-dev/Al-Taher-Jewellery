import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class DeveloperWidget extends StatelessWidget {
  final String title;
  final String name;

  const DeveloperWidget({
    required this.title,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title:',
          style: TextStyleManager.trBlack_20.copyWith(
            fontFamily: FontManager.almarai,
            fontSize: 22,
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Text(
          name,
          style: TextStyleManager.trBlack_20
              .copyWith(fontFamily: FontManager.almarai),
        ),
      ],
    );
  }
}
