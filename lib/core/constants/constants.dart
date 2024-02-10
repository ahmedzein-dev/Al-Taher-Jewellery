import 'package:flutter/material.dart';

class AppConstants {
  static const String onBoardingWelcomeCacheKey = 'onBoardingWelcomeCacheKey';
  static const String titles = 'titles';
  static const String screens = 'screens';
  static const String arLocale = 'ar';
  static const String enLocale = 'en';
  static const String bars = 'bars';
  static const String necklaces = 'necklaces';
  static const String earrings = 'earrings';
  static const String bracelets = 'bracelets';
  static const String rings = 'rings';
  static const String twins = 'twins';
  static const String debla = 'debla';
  static const String group = 'group';
  static const String kFavoritesBox = 'favoritesBox';
  static const String whatsappUrl = 'whatsapp://send?phone=number';
  static const String contactUrl = 'tel:number';
  static const String facebookUrl = 'fb://profile/id';

// static const Map<int, String> sliderImages = {
//   0: ImageManager.slider1,
//   1: ImageManager.slider2,
//   2: ImageManager.slider3,
// };
}

const kShimmerBaseColor = Color(0xFFE0E0E0);
const kNetworkImageOnErrorWidget = ColoredBox(
  color: kShimmerBaseColor,
  child: SizedBox(
    child: Icon(
      Icons.error_outline,
      color: Colors.red,
    ),
  ),
);
