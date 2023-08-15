import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/size_manager.dart';

class ProductDetailsSectionTitle extends StatelessWidget {
  final VoidCallback onTap;

  const ProductDetailsSectionTitle({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.padding24.w,
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            const Icon(
              Icons.arrow_back_ios_new,
            ),
          ],
        ),
      ),
    );
  }
}
