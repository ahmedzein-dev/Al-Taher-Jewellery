import 'package:altaher_jewellery/core/shared/widgets/products_grid_view.dart';
import 'package:altaher_jewellery/favorites/presentation/blocs/Favorites/favorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/size_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class FavoriteProductsListItems extends StatelessWidget {
  const FavoriteProductsListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        if (state is FavoritesEmptyState) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                state.message,
                textAlign: TextAlign.center,
                style: TextStyleManager.trBlack_20BOLD,
              ),
            ),
          );
        }
        if (state is FavoritesSuccessState) {
          return ProductsGridView(
            products: state.favorites,
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.padding10.w,
              vertical: AppPadding.padding16.h,
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
