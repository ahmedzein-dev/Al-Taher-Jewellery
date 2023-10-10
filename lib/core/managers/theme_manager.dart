import 'package:altaher_jewellery/core/managers/text_styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';
import 'size_manager.dart';

class ThemeManager {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      //fontFamily: FontManager.balooBhaijaan,
      scaffoldBackgroundColor: ColorManager.background,
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryLight,
      primaryColorDark: ColorManager.primaryDark,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorManager.primary,
        secondary: ColorManager.secondary,
        onPrimary: ColorManager.onPrimary,
        onSecondary: ColorManager.onSecondary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.white,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: ColorManager.primary,
        ),
        iconTheme: const IconThemeData(
          color: ColorManager.black,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
      listTileTheme: ListTileThemeData(
        titleTextStyle: TextStyleManager.black_20,
      ),
      cardTheme: const CardTheme(
        color: ColorManager.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppRadius.borderRadius16,
            ),
          ),
          textStyle: TextStyle(
            color: ColorManager.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
          minimumSize: const Size(0, 50),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(
            Size(0, 50),
          ),
          textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 15.sp,
              color: ColorManager.white,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppRadius.borderRadius20,
              ),
              side: const BorderSide(
                color: ColorManager.primary,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24.sp,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
        bodySmall: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
        ),
        labelLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
        ),
        labelSmall: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10.sp,
        ),
      ),
      dividerColor: ColorManager.grey,
    );
  }
}
