import 'package:altaher_jewellery/core/managers/text_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../blogs/presentation/widgets/blog_background_lines.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/custom_app_bar.dart';
import '../widgets/about_us_button.dart';
import '../widgets/about_us_text_widget.dart';
import '../widgets/bottom_model_sheet.dart';
import '../widgets/develper_widget.dart';

class AboutUSScreen extends StatelessWidget {
  const AboutUSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTransparentAppBar(
          hasBackButton: true, context: context, title: 'عن التطبيق'),
      body: Stack(
        children: [
          const BlogBackgroundLines(),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.padding25,
                vertical: AppPadding.padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AboutUsTextWidget(
                    text:
                        'تطبيق مجوهرات الطاهر هو تطبيق يعرض فيه مجموعة متميزة من الحلي ومن خلاله يتصفح الزبون البضاعة ويستطيع اضافة المنتج الذى اعجبه الى مفضلته ويتعرف على الاسعار والعديد من المزايا الأخرى .'),
                SizedBox(height: 25.h),
                Text('المطورون', style: TextStyleManager.black_20BOLD),
                SizedBox(height: 5.h),
                const DeveloperWidget(title: 'تصميم', name: 'Ali Zein'),
                SizedBox(height: 10.h),
                const DeveloperWidget(title: 'تطوير', name: 'Ahmed Zein'),
                SizedBox(height: 15.h),
                AboutUsButton(
                  onTab: () async {
                    showModalBottomSheet(
                        backgroundColor: ColorManager.bottomSheetBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            topRight: Radius.circular(25.r),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return const BottomModelSheet();
                        });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
