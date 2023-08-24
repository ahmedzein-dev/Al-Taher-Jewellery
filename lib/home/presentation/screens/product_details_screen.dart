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
              ProductDetailsDescriptionRectangularCard(
                product: product,
              ),
              const Spacer(),
              ProductDetailsSectionTitle(
                onTap: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              HorizontalListItems(
                allProducts: allProducts,
                product: product,
                color: ColorManager.rectangleCard,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
