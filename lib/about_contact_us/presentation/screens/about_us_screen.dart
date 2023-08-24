import 'package:altaher_jewellery/core/managers/asset_manager.dart';
import 'package:altaher_jewellery/core/managers/text_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../blogs/presentation/widgets/blog_background_lines.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/custom_app_bar.dart';

class AboutUSScreen extends StatelessWidget {
  const AboutUSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTransparentAppBarWithTitle(
        title: 'عن التطبيق',
      ),
      body: Stack(
        children: [
          const BlogBackgroundLines(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.padding25,
              vertical: AppPadding.padding16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'تطبيق jewellery store  هو تطبيق تعرض فيه محلات المجوهرات بضاعتها ومن خلاله يتصفح الزبون البضاعة ويتعرف على الاسعار والعديد من المزايا الأخرى .',
                  style: TextStyleManager.black_24ALMARAI.copyWith(
                    fontSize: 20,
                    height: 1.5,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'المطورون',
                  style: TextStyleManager.black_20BOLD,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Text(
                      'تصميم:',
                      style: TextStyleManager.trBlack_20.copyWith(
                        fontFamily: FontManager.almarai,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Ali Zein',
                      style: TextStyleManager.trBlack_20
                          .copyWith(fontFamily: FontManager.almarai),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Text(
                      'تطوير:',
                      style: TextStyleManager.trBlack_20.copyWith(
                        fontFamily: FontManager.almarai,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Ahmed Zein',
                      style: TextStyleManager.trBlack_20
                          .copyWith(fontFamily: FontManager.almarai),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'تواصل معنا لانشاء تطبيقك الخاص بك.',
                    style: TextStyleManager.trBlack_20.copyWith(
                        color: const Color(0xFF0000FF),
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
