import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/managers/route_manager.dart';
import '../../../core/managers/size_manager.dart';
import '../../../home/presentation/blocs/products/products_cubit.dart';
import '../../managers/asset_manager.dart';
import '../../managers/text_styles_manager.dart';

class ClientDrawer extends StatelessWidget {
  const ClientDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          SizedBox(
            height: 1.sh,
            width: 1.sw,
            child: SvgPicture.asset(
              ImageManager.drawerBackgroundLines,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              AppPadding.screenBodyPadding,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 52.h,
                ),
                Text(
                  'الاعدادات',
                  style: TextStyleManager.darkBlue_24BOLD,
                ),
                ListTile(
                  title: Text(
                    'البحث',
                    style: TextStyleManager.black_20,
                  ),
                  leading: SvgPicture.asset(
                    IconManager.search,
                    width: 35.w,
                    height: 35.h,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      Routes.search,
                      arguments: context.read<ProductsCubit>().state.homeEntity,
                    );
                  },
                ),
                ListTile(
                  title: Text(
                    'المفضلة',
                    style: TextStyleManager.black_20,
                  ),
                  leading: SvgPicture.asset(
                    IconManager.favoriteBlack,
                    width: 35.w,
                    height: 35.h,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.favorites);
                  },
                ),
                // ListTile(
                //   title: Text(
                //     'أسعار اليوم',
                //     style: TextStyleManager.black_20,
                //   ),
                //   leading: SvgPicture.asset(
                //     IconManager.currency,
                //     width: 35.w,
                //     height: 35.h,
                //   ),
                //   onTap: () {
                //     Navigator.of(context).pushNamed(Routes.currency);
                //   },
                // ),
                ListTile(
                  //  title: const Text('الجواهرجى'),
                  title: Text(
                    'الطاهر',
                    style: TextStyleManager.black_20,
                  ),
                  leading: SvgPicture.asset(
                    IconManager.contactUs,
                    width: 35.w,
                    height: 35.h,
                  ),
                  onTap: () async {
                    Navigator.of(context).pushNamed(Routes.contactUs);
                  },
                ),
                ListTile(
                  title: Text(
                    'عن التطبيق',
                    style: TextStyleManager.black_20,
                  ),
                  leading: SvgPicture.asset(
                    IconManager.aboutUs,
                    width: 35.w,
                    height: 35.h,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.aboutUs);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
