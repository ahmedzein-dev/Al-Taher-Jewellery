import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/managers/route_manager.dart';
import '../../../core/managers/size_manager.dart';
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
                  title: const Text('البحث'),
                  leading: SvgPicture.asset(
                    IconManager.search,
                    width: 35.w,
                    height: 35.h,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.search);
                  },
                ),
                ListTile(
                  title: const Text('المفضلة'),
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
                //   title: const Text('المدونة'),
                //   leading: SvgPicture.asset(
                //     IconManager.blogBlack,
                //     width: 35.w,
                //     height: 35.h,
                //   ),
                //   onTap: () {
                //     //     Navigator.of(context).pushNamed(Routes.blog);
                //   },
                // ),
                ListTile(
                  title: const Text('أسعار اليوم'),
                  leading: SvgPicture.asset(
                    IconManager.currency,
                    width: 35.w,
                    height: 35.h,
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.currency);
                  },
                ),
                ListTile(
                  //  title: const Text('الجواهرجى'),
                  title: const Text('الطاهر'),
                  leading: SvgPicture.asset(
                    IconManager.contactUs,
                    width: 35.w,
                    height: 35.h,
                  ),
                  onTap: () {
                    //   Navigator.of(context).pushNamed(Routes.contactUs);
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
