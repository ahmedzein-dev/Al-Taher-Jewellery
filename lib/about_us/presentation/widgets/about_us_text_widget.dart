import 'package:flutter/material.dart';

import '../../../core/managers/text_styles_manager.dart';

class AboutUsTextWidget extends StatelessWidget {
  final String text;
  const AboutUsTextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyleManager.black_24ALMARAI.copyWith(
        fontSize: 20,
        height: 1.5,
      ),
    );
  }
}
