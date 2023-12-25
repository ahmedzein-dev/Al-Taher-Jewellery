import 'package:altaher_jewellery/core/shared/widgets/client_drawer.dart';
import 'package:altaher_jewellery/core/shared/widgets/custom_app_bar.dart';
import 'package:altaher_jewellery/home/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/shared/blocs/nav_bar/nav_bar_cubit.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          drawer: const ClientDrawer(),
          appBar: state.index == 1
              ? buildAppBarWithLogo(
                  context,
                  ImageManager.taherHomeLogo,
                )
              : buildAppBarWithTitleAndActions(
                  context: context,
                  title: context
                      .read<NavBarCubit>()
                      .pages[AppConstants.titles]![state.index] as String,
                  withDrawer: true,
                ),
          body: context
              .read<NavBarCubit>()
              .pages[AppConstants.screens]![state.index] as Widget,
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
