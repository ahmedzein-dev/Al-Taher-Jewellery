import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:altaher_jewellery/core/managers/asset_manager.dart';

import '../../../core/shared/blocs/nav_bar/nav_bar_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<NavBarCubit, NavBarState, int>(
      selector: (state) {
        return state.index;
      },
      builder: (context, index) {
        return CurvedNavigationBar(
          height: 60,
          index: index,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.linear,
          animationDuration: const Duration(
            milliseconds: 300,
          ),
          items: [
            SvgPicture.asset(
              IconManager.blog,
            ),
            SvgPicture.asset(
              IconManager.home,
            ),
            SvgPicture.asset(
              IconManager.latestProducts,
            ),
          ],
          onTap: (index) {
            context.read<NavBarCubit>().changeActiveIndex(index);
          },
          buttonBackgroundColor: const Color(0XFF24687D),
          color: const Color(0XFF24687D),
        );
      },
    );
  }
}
