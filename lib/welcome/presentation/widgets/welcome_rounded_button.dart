import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:altaher_jewellery/welcome/presentation/blocs/welcome/welcome_cubit.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/managers/route_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class WelcomeRoundedButton extends StatelessWidget {
  const WelcomeRoundedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      width: 140.w,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(
            Routes.home,
          );
          context.read<WelcomeCubit>().completeOnBoardingWelcome();
        },
        style: TextButton.styleFrom(
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30.r,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'نتفرج',
              style: TextStyleManager.darkBlue_26BOLD,
            ),
            const Icon(Icons.arrow_back_ios_new_outlined,
                color: ColorManager.secondary)
          ],
        ),
      ),
    );
  }
}
