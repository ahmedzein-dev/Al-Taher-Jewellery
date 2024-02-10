import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../managers/text_styles_manager.dart';

class CategorySectionTitle extends StatelessWidget {
  final String title;
  final EdgeInsets padding;
  final VoidCallback onTap;

  const CategorySectionTitle(
      {super.key,
      required this.title,
      required this.padding,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyleManager.black_24ALMARAI,
          ),
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                const Text(
                  'شوف أكتر',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
