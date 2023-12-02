import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:flutter/material.dart';

import '../../managers/text_styles_manager.dart';

class FailureWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  final Color color;

  const FailureWidget({
    Key? key,
    required this.message,
    this.onRetry,
    this.color = ColorManager.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: TextStyleManager.black_18BOLD.copyWith(
              color: Colors.red,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton.icon(
            onPressed: onRetry,
            icon: Icon(
              Icons.refresh,
              color: color,
            ),
            label: Text(
              'اعادة تحميل',
              style: TextStyleManager.black_24ALMARAI,
            ),
          ),
        ],
      ),
    );
  }
}
