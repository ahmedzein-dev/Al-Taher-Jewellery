import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class BlogItemCard extends StatelessWidget {
  const BlogItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 10.h,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: const AssetImage(ImageManager.blogImage),
                      radius: 25.r,
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          //   'الجواهرجى',
                          'الطاهر',
                        ),
                        Row(
                          children: [
                            Text(
                              'اليوم',
                              style: TextStyleManager.grey_16,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '7:15 PM',
                              style: TextStyleManager.grey_16,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.star,
                  color: ColorManager.grey.withOpacity(.4),
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(
                20.r,
              ),
              child: Image.asset(
                ImageManager.blogImage,
                height: 150.h,
                width: 0.636.sw,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              width: .8.sw,
              child: Text(
                'التموين: نتوقع بدء تداول ذهب في البورصة السلعية نهاية العام الجاري' *
                    2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
