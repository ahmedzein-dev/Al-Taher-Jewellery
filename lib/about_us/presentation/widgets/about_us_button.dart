import 'package:flutter/material.dart';

import '../../../core/managers/text_styles_manager.dart';

class AboutUsButton extends StatelessWidget {
  final VoidCallback onTab;
  const AboutUsButton({
    super.key,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Text(
        'تواصل معنا لانشاء تطبيقك الخاص بك.',
        style: TextStyleManager.trBlack_20.copyWith(
            color: const Color(0xFF0000FF),
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid),
      ),
    );
  }
}
