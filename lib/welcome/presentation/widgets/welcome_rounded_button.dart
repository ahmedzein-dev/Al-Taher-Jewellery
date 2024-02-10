import 'package:altaher_jewellery/welcome/presentation/blocs/welcome/welcome_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/managers/route_manager.dart';
import '../../../core/managers/text_styles_manager.dart';

class WelcomeRoundedButton extends StatelessWidget {
  const WelcomeRoundedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'نتفرج',
              textAlign: TextAlign.center,
              style: TextStyleManager.darkBlue_24BOLD,
            ),
            const SizedBox(width: 3),
            const Icon(Icons.arrow_forward_ios_outlined,
                color: ColorManager.secondary)
          ],
        ),
      ),
    );
  }
}
