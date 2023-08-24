import 'package:altaher_jewellery/core/managers/route_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../home/presentation/blocs/products/products_cubit.dart';
import '../../managers/asset_manager.dart';
import '../../managers/text_styles_manager.dart';

buildAppBarWithLogo(BuildContext context, String logoPath) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: Builder(
      builder: (context) => IconButton(
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: const Icon(
          Icons.menu_outlined,
          size: 35,
        ),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: SvgPicture.asset(
        logoPath,
        width: 140.w,
        height: 35.h,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            Routes.search,
            arguments: context.read<ProductsCubit>().state.homeEntity,
          );
        },
        icon: SvgPicture.asset(
          IconManager.search,
        ),
      ),
    ],
  );
}

buildAppBarWithTitleAndActions(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyleManager.darkBlue_24BOLD,
    ),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.search);
        },
        icon: SvgPicture.asset(
          IconManager.search,
        ),
      ),
    ],
  );
}

buildTransparentAppBarWithTitle({String? title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Padding(
      padding: EdgeInsets.only(top: 10.0.h),
      child: title != null
          ? Text(
              title,
              style: TextStyleManager.darkBlue_24BOLD,
            )
          : null,
    ),
  );
}
