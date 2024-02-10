import 'package:altaher_jewellery/welcome/presentation/blocs/welcome/welcome_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/managers/color_manager.dart';
import '../../../core/enums/enums.dart';
import '../../../core/managers/asset_manager.dart';
import '../../../core/managers/route_manager.dart';
import '../blocs/splash/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SplashCubit, SplashState>(
          listenWhen: (previous, current) {
            return previous != current;
          },
          listener: (context, state) {
            if (state.splashEnded) {
              context.read<WelcomeCubit>().checkWelcomeStatus();
            }
          },
        ),
        BlocListener<WelcomeCubit, WelcomeState>(
          listenWhen: (previous, current) {
            return previous.checkWelcomeStatus != current.checkWelcomeStatus;
          },
          listener: (context, state) {
            if (state.checkWelcomeStatus == RequestState.success) {
              Navigator.of(context).pushReplacementNamed(
                Routes.home,
              );
            } else if (state.checkWelcomeStatus == RequestState.error) {
              Navigator.of(context).pushReplacementNamed(
                Routes.welcome,
              );
            }
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(),
        body: Center(
          child: SizedBox(
            child: SvgPicture.asset(
              ImageManager.taherAppLogo,
              width: .5.sw,
            ),
          ),
        ),
      ),
    );
  }
}
