import 'package:altaher_jewellery/core/managers/text_styles_manager.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:altaher_jewellery/search/presentation/blocs/search_cubit.dart';
import 'package:altaher_jewellery/search/presentation/widgets/search_rectangular_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/size_manager.dart';

class SearchListItems extends StatelessWidget {
  const SearchListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: context
                  .select<SearchCubit, List<ProductEntity>>(
                      (cubit) => cubit.filteredProducts)
                  .isNotEmpty,
              replacement: Center(
                child: Text(
                  'عفوا هذا المنتج غير موجود.',
                  style: TextStyleManager.black_24ALMARAI,
                ),
              ),
              child: Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.fromLTRB(
                    AppPadding.padding16.w,
                    AppPadding.padding25.h,
                    AppPadding.padding16.w,
                    AppPadding.padding16.h,
                  ),
                  itemCount:
                      context.read<SearchCubit>().filteredProducts.length,
                  itemBuilder: (context, index) {
                    final filteredProducts =
                        context.read<SearchCubit>().filteredProducts;
                    return SearchRectangularCard(
                      allProducts: filteredProducts,
                      product: filteredProducts[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 15.h,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
