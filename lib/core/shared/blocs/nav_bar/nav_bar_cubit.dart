import 'package:altaher_jewellery/home/presentation/screens/latest_products_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blogs/presentation/screens/blog_screen.dart';
import '../../../../home/presentation/screens/home_screen.dart';
import '../../../constants/constants.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(const NavBarState());
  final pages = {
    AppConstants.titles: [
      'المدونة',
      'الجواهرجي',
      'أحدث الإضافات',
    ],
    AppConstants.screens: const [
      BlogScreen(),
      HomeScreen(),
      LatestProductsScreen(),
    ],
  };
  void changeActiveIndex(int index) {
    emit(
      state.copyWith(
        index: index,
      ),
    );
  }
}
