import 'package:flutter/material.dart';
import 'package:altaher_jewellery/core/shared/widgets/favorite_produts_list_items.dart';
import 'package:altaher_jewellery/home/presentation/widgets/latest_product_screen_background_lines.dart';

import '../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/custom_app_bar.dart';

class FavoriteProductsScreen extends StatelessWidget {
  const FavoriteProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTransparentAppBarWithTitle(
        title: 'المفضلة',
      ),
      body: const Stack(
        children: [
          LatestProductsBackgroundLines(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.padding10,
              vertical: AppPadding.padding16,
            ),
            child: FavoriteProductsListItems(),
          ),
        ],
      ),
    );
  }
}
