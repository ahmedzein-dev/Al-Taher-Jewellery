import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:altaher_jewellery/core/managers/color_manager.dart';

import '../../../categories/domain/entities/categories_entity.dart';
import '../../../categories/presentation/widgets/category_list_items.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/shared/widgets/client_drawer.dart';
import '../../../core/shared/widgets/custom_app_bar.dart';
import '../widgets/home_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // TODO: call get products here
      },
      child: Scaffold(
        appBar: buildAppBarWithLogo(
          context,
          //  ImageManager.homeLogo,
          ImageManager.taherHomeLogo,
        ),
        drawer: const ClientDrawer(),
        body: Stack(
          children: [
            Positioned.fill(
              child: SizedBox(
                height: 1.sh,
                width: 1.sw,
                child: SvgPicture.asset(
                  ImageManager.categoriesBackgroundLines,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  const HomeSlider(),
                  SizedBox(
                    height: 25.h,
                  ),
                  CategoryListItems(
                    title: 'خواتم',
                    cardItemBackground: ColorManager.productItemCard,
                    listItemsBackground: ColorManager.listItemsBackground,
                    products: categories.rings,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CategoryListItems(
                    title: 'غوايش',
                    products: categories.bracelets,
                  ),

                  SizedBox(
                    height: 10.h,
                  ),
                  CategoryListItems(
                    title: 'سلاسل',
                    cardItemBackground: ColorManager.productItemCard,
                    listItemsBackground: ColorManager.listItemsBackground,
                    products: categories.necklaces,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CategoryListItems(
                    title: 'حلقان',
                    products: categories.earrings,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CategoryListItems(
                    title: 'سبايك',
                    cardItemBackground: ColorManager.productItemCard,
                    listItemsBackground: ColorManager.listItemsBackground,
                    products: categories.bars,
                  ),

                  // HomeCategoryWidget(
                  //   categoryTitle: 'خواتم',
                  //   categoryBackgroundLines:
                  //       ImageManager.homeFirstCategoryBackgroundLines,
                  //   productItemsCardBackgroundColor: ColorManager.productItemCard,
                  //   products: products1,
                  // ),
                  // SizedBox(
                  //   height: 25.h,
                  // ),
                  // HomeCategoryWidget(
                  //   categoryTitle: 'غوايش',
                  //   categoryBackgroundLines:
                  //       ImageManager.homeSecondCategoryBackgroundLines,
                  //   products: products2,
                  // ),
                  SizedBox(
                    height: 100.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
