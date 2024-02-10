import 'package:altaher_jewellery/core/shared/widgets/horizontal_list_items.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:altaher_jewellery/home/presentation/widgets/product_details_header.dart';
import 'package:altaher_jewellery/home/presentation/widgets/product_details_screen_background_lines.dart';
import 'package:altaher_jewellery/home/presentation/widgets/product_details_title_rectangular_card.dart';
import 'package:altaher_jewellery/home/presentation/widgets/products_details_section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';
import '../widgets/product_details_description_rectangular_card.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductEntity product;
  final List<ProductEntity> allProducts;

  const ProductDetailsScreen({
    super.key,
    required this.product,
    required this.allProducts,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ProductDetailsBackgroundLines(),
          Column(
            children: [
              ProductDetailsHeader(
                imgUrl: product.imgUrl,
              ),
              SizedBox(
                height: 25.h,
              ),
              ProductDetailsTitleRectangularCard(
                product: product,
              ),
              SizedBox(
                height: 25.h,
              ),
              if (product.description.isNotEmpty)
                ProductDetailsDescriptionRectangularCard(
                  product: product,
                ),
              const Spacer(),
              if (allProducts.length > 1)
                ProductDetailsSectionTitle(
                  onTap: () {},
                ),
              SizedBox(
                height: 10.h,
              ),
              if (allProducts.length > 1)
                HorizontalListItems(
                  allProducts: allProducts,
                  product: product,
                  color: ColorManager.rectangleCard,
                ),
            ],
          ),
          SafeArea(
            child: InkWell(
              onTap: () => Navigator.maybePop(context),
              child: Padding(
                padding: EdgeInsets.only(right: 20.0.w, top: 10.h),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      color: ColorManager.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.r),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: ColorManager.secondary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
