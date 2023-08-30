// import 'package:altaher_jewellery/core/shared/widgets/product_item_card.dart';
// import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../core/managers/route_manager.dart';
// import '../../../core/managers/size_manager.dart';
// import '../../../core/shared/widgets/category_section_title.dart';
// import 'home_category_background.dart';
//
// class HomeCategoryWidget extends StatelessWidget {
//   final List<ProductEntity> products;
//   final String categoryBackgroundLines;
//   final String categoryTitle;
//   final Color? productItemsCardBackgroundColor;
//
//   const HomeCategoryWidget({
//     super.key,
//     required this.products,
//     required this.categoryBackgroundLines,
//     required this.categoryTitle,
//     this.productItemsCardBackgroundColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         HomeCategoryBackground(
//           imagePath: categoryBackgroundLines,
//         ),
//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: AppPadding.padding16.w,
//             vertical: AppPadding.padding24.h,
//           ),
//           child: Column(
//             children: [
//               CategorySectionTitle(
//                 title: categoryTitle,
//                 padding: EdgeInsets.symmetric(
//                   horizontal: AppPadding.padding24.w,
//                 ),
//                 onTap: () {
//                   Navigator.of(context).pushNamed(
//                     Routes.categoryProducts,
//                     arguments: {
//                       'title': categoryTitle,
//                       'products': products,
//                     },
//                   );
//                 },
//               ),
//               SizedBox(
//                 height: 20.h,
//               ),
//               productList(productItemsCardBackgroundColor, context),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Column productList(
//       Color? productItemsCardBackgroundColor, BuildContext context) {
//     final List<ProductItemCard> productItems = List.generate(
//       products.length,
//       (index) => ProductItemCard(
//         backgroundColor: productItemsCardBackgroundColor,
//         allProducts: products,
//         product: products[index],
//       ),
//     );
//     return Column(
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: productItems[0],
//             ),
//             Expanded(
//               child: productItems[1],
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 20.h,
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: productItems[2],
//             ),
//             Expanded(
//               child: productItems[3],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
