import 'package:flutter/material.dart';

import '../../managers/text_styles_manager.dart';

class FailureWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;

  const FailureWidget({
    Key? key,
    required this.message,
    this.onRetry,
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
            icon: const Icon(
              Icons.refresh,
              color: Colors.black,
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
