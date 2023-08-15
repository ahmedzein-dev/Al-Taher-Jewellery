import '../managers/asset_manager.dart';

class AppConstants {
  static const String onBoardingWelcomeCacheKey = 'onBoardingWelcomeCacheKey';
  static const String userNameCacheKey = 'userNameCacheKey';
  static const String passwordCacheKey = 'passwordCacheKey';

  static const String home1TagKey = 'home1TagKey';
  static const String home2TagKey = 'home2TagKey';
  static const String home3TagKey = 'home3TagKey';

  static const String titles = 'titles';
  static const String screens = 'screens';

  static const String arLocale = 'ar';
  static const String enLocale = 'en';
  static const Map<int, String> sliderImages = {
    0: ImageManager.slider1,
    1: ImageManager.slider2,
    2: ImageManager.slider3,
  };
}
