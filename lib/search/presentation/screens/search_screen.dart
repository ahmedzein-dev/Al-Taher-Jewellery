import 'package:altaher_jewellery/core/shared/widgets/custom_app_bar.dart';
import 'package:altaher_jewellery/home/domain/entities/home_entity.dart';
import 'package:altaher_jewellery/search/presentation/blocs/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/enums/filter_enum.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/color_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/managers/text_styles_manager.dart';
import '../../../core/services/services.dart';
import '../blocs/filter_search/filter_search_cubit.dart';
import '../widgets/custom_search_field.dart';
import '../widgets/filters_bottom_sheet.dart';
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
                const Expanded(
                  child: SearchListItems(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: 1.sw,
        height: 50.h,
        child: InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (_) {
                return MultiBlocProvider(
                  providers: [
                    BlocProvider.value(
                      value: context.read<SearchCubit>(),
                    ),
                    BlocProvider(
                      create: (_) => sl<FilterSearchCubit>()
                        ..initFilters(
                          context.read<SearchCubit>().filter,
                        ),
                    ),
                  ],
                  child: const FiltersBottomSheet(),
                );
              },
            );
          },
          child: Container(
            color: ColorManager.secondary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  IconManager.filter,
                  colorFilter: const ColorFilter.mode(
                    ColorManager.white,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Stack(
                  children: [
                    Center(
                      child: Text(
                        'تصفية و ترتيب',
                        style: TextStyleManager.white_18,
                      ),
                    ),
                    BlocBuilder<SearchCubit, SearchState>(
                      buildWhen: (previous, current) {
                        return current is SearchedFilterApplied ||
                            current is SearchedFilterCleared;
                      },
                      builder: (context, state) {
                        return Visibility(
                          visible: context.select<SearchCubit, FilterEnum?>(
                                  (cubit) => cubit.filter) !=
                              null,
                          child: Positioned(
                            top: 12,
                            left: 0,
                            child: Container(
                              width: 8.w,
                              height: 8.h,
                              decoration: const BoxDecoration(
                                color: ColorManager.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
