// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:altaher_jewellery/categories/presentation/widgets/category_list_items.dart';
//
// import '../../../core/managers/asset_manager.dart';
// import '../../../core/shared/widgets/custom_app_bar.dart';
// import '../../domain/entities/categories_entity.dart';
//
// class CategoriesScreen extends StatelessWidget {
//   const CategoriesScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBarWithTitleAndActions(
//         context,
//         'التصنيفات',
//       ),
//       body: Stack(
//         children: [
//           Positioned.fill(
//             child: SizedBox(
//               height: 1.sh,
//               width: 1.sw,
//               child: SvgPicture.asset(
//                 ImageManager.categoriesBackgroundLines,
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 CategoryListItems(
//                   title: 'غوايش',
//                   products: categories.bracelets,
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 CategoryListItems(
//                   title: 'سبايك',
//                   products: categories.bars,
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 CategoryListItems(
//                   title: 'سلاسل',
//                   products: categories.necklaces,
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 CategoryListItems(
//                   title: 'حلقان',
//                   products: categories.earrings,
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//                 CategoryListItems(
//                   title: 'خواتم',
//                   products: categories.rings,
//                 ),
//                 SizedBox(
//                   height: 15.h,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
