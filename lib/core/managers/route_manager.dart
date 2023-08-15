import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:altaher_jewellery/categories/presentation/screens/categories_screen.dart';
import 'package:altaher_jewellery/categories/presentation/screens/category_products.dart';
import 'package:altaher_jewellery/core/shared/widgets/image_preview.dart';
import 'package:altaher_jewellery/currency/presentation/screens/currency_screen.dart';
import 'package:altaher_jewellery/favorites/presentation/screens/favorite_products_screen.dart';
import 'package:altaher_jewellery/home/domain/entities/product/product_entity.dart';
import 'package:altaher_jewellery/home/presentation/screens/latest_products_screen.dart';
import 'package:altaher_jewellery/home/presentation/screens/product_details_screen.dart';

import '../../home/presentation/screens/home_layout.dart';
import '../../search/presentation/screens/search_screen.dart';
import '../../welcome/presentation/blocs/splash/splash_cubit.dart';
import '../../welcome/presentation/screens/splash_screen.dart';
import '../../welcome/presentation/screens/welcome_screen.dart';
import '../services/services.dart';
import '../shared/blocs/nav_bar/nav_bar_cubit.dart';

class Routes {
  static const String splash = '/';
  static const String welcome = '/welcome';

  // static const String welcome = '/';
  static const String home = '/home';
  static const String blog = '/blog';
  static const String latestProduct = '/latestProduct';
  static const String currency = '/currency';
  static const String contactUs = '/contactUs';
  static const String categoryProducts = '/categoryProducts';
  static const String categories = '/categories';
  static const String search = '/search';
  static const String productDetails = '/productDetails';
  static const String favorites = '/favorites';
  static const String imagePreview = '/imagePreview';
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (_) => sl<SplashCubit>()..endSplash(),
              child: const SplashScreen(),
            );
          },
        );
      case Routes.welcome:
        return MaterialPageRoute(
          builder: (_) {
            return const WelcomeScreen();
          },
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) {
            return BlocProvider(
              create: (BuildContext context) => sl<NavBarCubit>(),
              child: const HomeLayout(),
            );
          },
        );
      case Routes.categories:
        return MaterialPageRoute(
          builder: (_) {
            return const CategoriesScreen();
          },
        );
      case Routes.categoryProducts:
        final args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (_) {
            return CategoryProducts(
              title: args['title'],
              products: args['products'],
            );
          },
        );
      case Routes.search:
        return MaterialPageRoute(
          builder: (_) {
            return const SearchScreen();
          },
        );
      case Routes.productDetails:
        return MaterialPageRoute(
          builder: (_) {
            final args = settings.arguments as Map;
            return ProductDetailsScreen(
              product: args['product'] as ProductEntity,
              allProducts: args['allProducts'] as List<ProductEntity>,
            );
          },
        );
      case Routes.currency:
        return MaterialPageRoute(
          builder: (_) {
            return const CurrencyScreen();
          },
        );
      case Routes.latestProduct:
        return MaterialPageRoute(
          builder: (_) {
            return const LatestProductsScreen();
          },
        );
      case Routes.favorites:
        return MaterialPageRoute(
          builder: (_) {
            return const FavoriteProductsScreen();
          },
        );
      case Routes.imagePreview:
        return MaterialPageRoute(
          builder: (_) {
            return ImagePreview(
              imgPath: settings.arguments as String,
            );
          },
        );
    }
    return null;
  }
}
