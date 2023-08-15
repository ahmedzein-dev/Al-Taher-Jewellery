import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/error/exceptions.dart';

abstract class WelcomeCacheDataSource {
  void checkWelcomeStatus();

  Future<void> completeOnBoardingWelcome();
}

class WelcomeCacheDataSourceImpl implements WelcomeCacheDataSource {
  final SharedPreferences sharedPreferences;

  WelcomeCacheDataSourceImpl(this.sharedPreferences);

  @override
  void checkWelcomeStatus() {
    final onBoardingWelcomeValue = sharedPreferences.getBool(
      AppConstants.onBoardingWelcomeCacheKey,
    );

    if (onBoardingWelcomeValue == null || onBoardingWelcomeValue == false) {
      throw const CustomException.cacheException();
    }
  }

  @override
  Future<void> completeOnBoardingWelcome() async {
    await sharedPreferences.setBool(
      AppConstants.onBoardingWelcomeCacheKey,
      true,
    );
  }
}
