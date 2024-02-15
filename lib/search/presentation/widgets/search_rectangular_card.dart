import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:altaher_jewellery/core/managers/size_manager.dart';
import 'package:altaher_jewellery/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/constants.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/route_manager.dart';
import '../../../core/managers/text_styles_manager.dart';
import '../../../core/shared/widgets/cached_network_image.dart';
import '../../../favorites/presentation/blocs/Favorites/favorites_cubit.dart';
import '../../../home/domain/entities/product_entity.dart';

class SearchRectangularCard extends StatelessWidget {
  final ProductEntity product;
  final List<ProductEntity> allProducts;

  const SearchRectangularCard({
    super.key,
    required this.product,
    required this.allProducts,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (context.hasFocus()) {
          context.unFocus();
        }
        Navigator.of(context).pushNamed(
          Routes.productDetails,
          arguments: {
            'product': product,
            'allProducts': allProducts,
          },
        );
      },
      child: Card(
        elevation: 8,
        color: ColorManager.rectangleCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius20.r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppPadding.padding12.h,
            horizontal: AppPadding.padding24.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      AppRadius.borderRadius20.r,
                    ),
                    child: CachedNetworkImageWidget(
                      imgUrl: product.imgUrl,
                      height: 90.h,
                      width: 120.w,
                      onErrorWidget: kNetworkImageOnErrorWidget,
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  SizedBox(
                    height: 70.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: TextStyleManager.trBlack_20BOLD.copyWith(
                            height: 1.3,
                          ),
                        ),
                        if (product.weight.isNotEmpty)
                          Text(
                            '${product.weight} جرام',
                            style: TextStyleManager.trBlack_20BOLD.copyWith(
                              fontWeight: FontWeight.w400,
                              height: .4,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    context.select<FavoritesCubit, bool>((favoritesCubit) =>
                            favoritesCubit.isProductInFavorites(product.id))
                        ? SvgPicture.asset(
                            IconManager.favorite,
                          )
                        : SvgPicture.asset(
                            IconManager.favorite,
                            colorFilter: const ColorFilter.mode(
                              ColorManager.grey,
                              BlendMode.srcIn,
                            ),
                          )
                    // Text(
                    //   '${product.price} LE',
                    //   textDirection: TextDirection.ltr,
                    //   style: TextStyleManager.trBlack_20BOLD.copyWith(
                    //     fontWeight: FontWeight.w400,
                    //     fontSize: 16.sp,
                    //     height: .4,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
