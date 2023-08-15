import 'package:flutter/material.dart';
import 'package:altaher_jewellery/core/shared/widgets/favorite_produts_list_items.dart';
import 'package:altaher_jewellery/home/presentation/widgets/latest_product_screen_background_lines.dart';

import '../../../core/managers/size_manager.dart';

class LatestProductsScreen extends StatelessWidget {
  const LatestProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
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
