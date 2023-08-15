import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:altaher_jewellery/core/shared/widgets/custom_app_bar.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../widgets/custom_search_field.dart';
import '../widgets/search_list_items.dart';
import '../widgets/search_screen_background_lines.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTransparentAppBarWithTitle(title: 'البحث'),
      body: Stack(
        children: [
          const SearchBackgroundLines(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.screenBodyPadding.h,
            ),
            child: Column(
              children: [
                CustomSearchField(
                  // controller: searchController,
                  hint: 'أكتب ما تريد البحث عنه',
                  prefix: SvgPicture.asset(
                    IconManager.searchBlue,
                    fit: BoxFit.scaleDown,
                  ),
                  //        onChanged: context.read<PostCubit>().onChangeHandler,
                ),
                const SearchListItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
