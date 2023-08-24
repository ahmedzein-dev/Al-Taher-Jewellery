import 'package:altaher_jewellery/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/shared/widgets/cached_network_image.dart';
import '../../../home/domain/entities/product_entity.dart';
import '../../managers/asset_manager.dart';
import '../../managers/route_manager.dart';
import '../../managers/text_styles_manager.dart';

class ProductItemCard extends StatelessWidget {
  final Color? backgroundColor;
  final ProductEntity product;
  final List<ProductEntity> allProducts;
  final EdgeInsets? margin;
  final double width;
  final double height;
  final bool fromDetails;

  const ProductItemCard({
    this.backgroundColor = Colors.white,
    required this.product,
    required this.allProducts,
    this.fromDetails = false,
    this.margin,
    this.width = 125,
    this.height = 100,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fromDetails
          ? () {
              Navigator.of(context).pushReplacementNamed(
                Routes.productDetails,
                arguments: {
                  'product': product,
                  'allProducts': allProducts,
                },
              );
            }
          : () {
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
        margin: margin,
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.r,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.r),
          child: Column(
            children: [
              SizedBox(
                width: width.w,
                height: height,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      20.r,
                    ),
                    child: CachedNetworkImageWidget(
                      imgUrl: product.imgUrl,
                      onErrorWidget: kNetworkImageOnErrorWidget,
                    )
                    // Image.asset(
                    //   product.imgUrl,
                    //   fit: BoxFit.cover,
                    // ),
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                width: width.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.title,
                      style: TextStyleManager.black_18BOLD.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SvgPicture.asset(
                      IconManager.favorite,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              // if (product.weight.isNotEmpty && product.price.isNotEmpty)
              //   Column(
              //     children: [
              //       const SizedBox(
              //         height: 10,
              //       ),
              //       SizedBox(
              //         width: width.w,
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             if (product.weight.isNotEmpty)
              //               Text(
              //                 '${product.weight}جرام',
              //                 style: TextStyleManager.black_14,
              //               ),
              //             if (product.price.isNotEmpty)
              //               Text(
              //                 '${product.price} LE',
              //                 textDirection: TextDirection.ltr,
              //                 overflow: TextOverflow.ellipsis,
              //                 style: TextStyleManager.black_14,
              //               ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   )
            ],
          ),
        ),
      ),
    );
  }
}
