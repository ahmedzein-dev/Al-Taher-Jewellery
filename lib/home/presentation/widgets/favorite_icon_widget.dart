import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/color_manager.dart';
import '../../../favorites/presentation/blocs/Favorites/favorites_cubit.dart';
import '../../../favorites/presentation/blocs/add_delete_favorite_cubit/add_delete_favorite_cubit.dart';
import '../../domain/entities/product_entity.dart';

class FavoriteIconWidget extends StatelessWidget {
  const FavoriteIconWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddDeleteFavoriteCubit, AddDeleteFavoriteState>(
      listener: (context, state) {
        if (state is! AddDeleteFavoriteErrorState) {
          context.read<FavoritesCubit>().getFavorite();
        }
      },
      buildWhen: (previous, current) =>
          current is AddToFavoritesSuccessState ||
          current is DeleteFromFavoritesSuccessState,
      builder: (context, state) {
        return InkWell(
          onTap: () {
            if (context
                .read<FavoritesCubit>()
                .isProductInFavorites(product.id)) {
              context
                  .read<AddDeleteFavoriteCubit>()
                  .deleteFromFavorite(product);
            } else {
              context.read<AddDeleteFavoriteCubit>().addToFavorite(product);
            }
          },
          child: context.read<FavoritesCubit>().isProductInFavorites(product.id)
              ? SvgPicture.asset(
                  IconManager.favorite,
                )
              : SvgPicture.asset(
                  IconManager.favorite,
                  colorFilter: const ColorFilter.mode(
                    ColorManager.grey,
                    BlendMode.srcIn,
                  ),
                ),
        );
      },
    );
  }
}
