import 'package:altaher_jewellery/favorites/presentation/widgets/favorite_produts_list_items.dart';
import 'package:altaher_jewellery/home/presentation/widgets/latest_product_screen_background_lines.dart';
import 'package:flutter/material.dart';

class FavoriteProductsScreen extends StatelessWidget {
  const FavoriteProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // appBar: buildTransparentAppBar(
        //   hasBackButton: true,
        //   context: context,
        //   title: 'المفضلة',
        // ),
        const Stack(
      children: [
        LatestProductsBackgroundLines(),
        FavoriteProductsListItems(),
      ],
    );
  }
}
