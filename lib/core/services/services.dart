import 'package:altaher_jewellery/home/data/repositories/products_reposistory_impl.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:altaher_jewellery/home/domain/repositories/products_repository.dart';
import 'package:altaher_jewellery/home/domain/use_cases/get_all_products.dart';
import 'package:altaher_jewellery/home/domain/use_cases/get_latest_products.dart';
import 'package:altaher_jewellery/home/presentation/blocs/products/products_cubit.dart';
import 'package:altaher_jewellery/search/presentation/blocs/search_cubit.dart';
import 'package:altaher_jewellery/welcome/data/data_sources/local/data_sources/welcome_cache_data_source.dart';
import 'package:altaher_jewellery/welcome/data/repositories/welcome_repository_impl.dart';
import 'package:altaher_jewellery/welcome/domain/repositories/welcome_repository.dart';
import 'package:altaher_jewellery/welcome/presentation/blocs/welcome/welcome_cubit.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../currency/data/data_sources/currency_firebase_service.dart';
import '../../currency/data/repositories/currency_repository_impl.dart';
import '../../currency/domain/repositories/currency_repository.dart';
import '../../currency/presentation/blocs/get_gold_price/currency_cubit.dart';
import '../../favorites/presentation/blocs/Favorites/favorites_cubit.dart';
import '../../favorites/presentation/blocs/add_delete_favorite_cubit/add_delete_favorite_cubit.dart';
import '../../home/data/data_sources/product_remote_data_source.dart';
import '../../home/data/data_sources/product_remote_data_source_impl.dart';
import '../../search/presentation/blocs/filter_search/filter_search_cubit.dart';
import '../../welcome/domain/use_cases/check_welcome_status_use_case.dart';
import '../../welcome/domain/use_cases/complete_welcome_use_case.dart';
import '../../welcome/presentation/blocs/splash/splash_cubit.dart';
import '../constants/constants.dart';
import '../shared/blocs/nav_bar/nav_bar_cubit.dart';

final sl = GetIt.instance;

Future<void> initServices() async {
  // external
  final sharedPreferences = await _SharedPreferencesService.init();
  final hive = await _HiveServices.init();
  sl.registerLazySingleton<FirebaseDatabase>(
    () => FirebaseDatabase.instance,
  );
  sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );
  sl.registerLazySingleton<HiveInterface>(
    () => hive,
  );

  // data sources

  sl.registerLazySingleton<WelcomeCacheDataSource>(
    () => WelcomeCacheDataSourceImpl(
      sl(),
    ),
  );
  sl.registerLazySingleton<ProductsRemoteDataSource>(
    () => ProductsRemoteDataSourceImpl(
      sl(),
    ),
  );
  sl.registerLazySingleton<GoldPriceFirebaseService>(
    () => GoldPriceFirebaseService(
      firebaseDatabase: sl(),
    ),
  );

  // repositories

  sl.registerLazySingleton<WelcomeRepository>(
    () => WelcomeRepositoryImpl(
      sl(),
    ),
  );
  sl.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImpl(
      sl(),
    ),
  );
  sl.registerLazySingleton<CurrencyRepository>(
    () => CurrencyRepositoryImpl(
      goldPriceFirebaseService: sl(),
    ),
  );
  // use cases

  sl.registerLazySingleton<CheckWelcomeStatusUseCase>(
    () => CheckWelcomeStatusUseCase(
      sl(),
    ),
  );
  sl.registerLazySingleton<CompleteOnBoardingWelcomeUseCase>(
    () => CompleteOnBoardingWelcomeUseCase(
      sl(),
    ),
  );
  sl.registerLazySingleton<GetAllProductsUseCase>(
    () => GetAllProductsUseCase(
      sl(),
    ),
  );
  sl.registerLazySingleton<GetLatestProductsUseCase>(
    () => GetLatestProductsUseCase(
      sl(),
    ),
  );

  // blocs
  sl.registerLazySingleton(
    () => SplashCubit(),
  );
  sl.registerLazySingleton(
    () => NavBarCubit(),
  );
  sl.registerLazySingleton(
    () => WelcomeCubit(
      sl(),
      sl(),
    ),
  );
  sl.registerFactory(
    () => ProductsCubit(
      sl(),
      sl(),
    ),
  );
  sl.registerFactory(
    () => SearchCubit(),
  );
  sl.registerFactory(
    () => FilterSearchCubit(),
  );
  sl.registerFactory(
    () => FavoritesCubit(
      sl(),
    ),
  );
  sl.registerFactory(
    () => AddDeleteFavoriteCubit(
      sl(),
    ),
  );
  sl.registerFactory(
    () => CurrencyCubit(
      currencyRepository: sl(),
    ),
  );
}

// class _DioService {
//   static Dio init({
//     String baseUrl = ApiConstants.baseUrl,
//   }) {
//     final dio = Dio(
//       BaseOptions(
//         baseUrl: baseUrl,
//         connectTimeout: const Duration(seconds: 15),
//         receiveTimeout: const Duration(seconds: 15),
//         receiveDataWhenStatusError: true,
//         followRedirects: false,
//         validateStatus: (status) {
//           return true;
//         },
//       ),
//     );
//     _addDioLogger(dio);
//
//     return dio;
//   }
//
//   static void _addDioLogger(Dio dio) {
//     dio.interceptors.add(
//       PrettyDioLogger(
//         requestHeader: true,
//         requestBody: true,
//         responseBody: true,
//         responseHeader: false,
//         error: true,
//         compact: true,
//         maxWidth: 90,
//       ),
//     );
//   }
// }
//
class _SharedPreferencesService {
  static Future<SharedPreferences> init() async {
    return SharedPreferences.getInstance();
  }
}

class _HiveServices {
  static Future<HiveInterface> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ProductEntityAdapter());
    await Hive.openBox<ProductEntity>(AppConstants.kFavoritesBox);
    return Hive;
  }
}
