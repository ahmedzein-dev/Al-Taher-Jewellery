import 'package:altaher_jewellery/core/managers/text_styles_manager.dart';
import 'package:altaher_jewellery/search/presentation/blocs/search_cubit.dart';
import 'package:altaher_jewellery/search/presentation/widgets/search_rectangular_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/route_manager.dart';
import '../../../core/managers/size_manager.dart';

class SearchListItems extends StatelessWidget {
  const SearchListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchEmptyState) {
          return Expanded(
            child: Center(
              child: Text(
                state.message,
                style: TextStyleManager.black_24ALMARAI,
              ),
            ),
          );
        }
        if (state is SearchSuccessState) {
          return Expanded(
            child: ListView.separated(
              padding: EdgeInsets.fromLTRB(
                AppPadding.padding6.w,
                AppPadding.padding50.h,
                AppPadding.padding6.w,
                AppPadding.padding16.h,
              ),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return SearchRectangularCard(
                  onTab: () {
                    Navigator.of(context).pushNamed(
                      Routes.productDetails,
                      arguments: {
                        'product': state.products[index],
                        'allProducts': state.products,
                      },
                    );
                  },
                  product: state.products[index],
                );
              },
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: 15.h,
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
