import 'package:altaher_jewellery/core/shared/widgets/custom_app_bar.dart';
import 'package:altaher_jewellery/home/domain/entities/home_entity.dart';
import 'package:altaher_jewellery/search/presentation/blocs/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../widgets/custom_search_field.dart';
import '../widgets/search_list_items.dart';
import '../widgets/search_screen_background_lines.dart';

class SearchScreen extends StatelessWidget {
  final HomeEntity homeEntity;

  const SearchScreen({required this.homeEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTransparentAppBar(
          title: 'البحث', hasBackButton: true, context: context),
      body: Stack(
        children: [
          const SearchBackgroundLines(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.screenBodyPadding.h,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                CustomSearchField(
                  controller: context.read<SearchCubit>().searchController,
                  hint: 'أكتب ما تريد البحث عنه',
                  prefix: SvgPicture.asset(
                    IconManager.searchBlue,
                    fit: BoxFit.scaleDown,
                  ),
                  onFieldSubmitted: (_) {
                    context.read<SearchCubit>().search(
                          homeEntity,
                        );
                  },
                  onPrefixPressed: () {
                    context.read<SearchCubit>().search(
                          homeEntity,
                        );
                  },
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
