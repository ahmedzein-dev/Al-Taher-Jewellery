import 'package:altaher_jewellery/core/managers/text_styles_manager.dart';
import 'package:altaher_jewellery/search/presentation/blocs/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../../core/managers/size_manager.dart';
import '../../../../core/utils/extensions.dart';
import '../../../core/enums/filter_enum.dart';
import '../blocs/filter_search/filter_search_cubit.dart';

class FiltersBottomSheet extends StatelessWidget {
  const FiltersBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        AppPadding.padding16,
      ),
      child: Column(
        children: [
          Text(
            'رتب حسب',
            style: TextStyleManager.darkBlue_18BOLD,
          ),
          SizedBox(
            height: context.screenHeight() * 0.01,
          ),
          ...FilterEnum.values.map((filter) {
            return BlocSelector<FilterSearchCubit, FilterSearchState,
                FilterEnum?>(
              selector: (state) {
                return state.filter;
              },
              builder: (context, currentFilter) {
                return RadioListTile(
                  value: filter,
                  title: Text(
                    filter.getStringFilter(),
                  ),
                  groupValue: currentFilter,
                  onChanged: (value) {
                    context.read<FilterSearchCubit>().changeFilter(value!);
                  },
                );
              },
            );
          }).toList(),
          const Spacer(),
          BlocBuilder<FilterSearchCubit, FilterSearchState>(
            buildWhen: (previous, current) {
              return previous.filter != current.filter;
            },
            builder: (context, state) {
              return Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.secondary,
                      ),
                      onPressed: state.filter != null
                          ? () {
                              Navigator.of(context).pop();
                              context
                                  .read<SearchCubit>()
                                  .applyFilter(state.filter!);
                            }
                          : null,
                      child: const Text(
                        'تطبيق',
                        style: TextStyle(
                          color: ColorManager.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth() * 0.03,
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: state.filter != null
                          ? () {
                              Navigator.of(context).pop();
                              context.read<SearchCubit>().clearFilter();
                            }
                          : null,
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: state.filter != null
                              ? ColorManager.secondary
                              : ColorManager.secondaryLight,
                        ),
                      ),
                      child: Text(
                        'ازالة',
                        style: TextStyle(
                          color: state.filter != null
                              ? ColorManager.secondary
                              : ColorManager.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
