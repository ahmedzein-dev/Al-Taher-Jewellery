import 'package:altaher_jewellery/welcome/presentation/blocs/welcome/welcome_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/constants.dart';
import 'core/managers/route_manager.dart';
import 'core/managers/theme_manager.dart';
import 'core/services/services.dart';
import 'core/utils/bloc_observer.dart';
import 'favorites/presentation/blocs/Favorites/favorites_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initServices();
  // await Hive.initFlutter();
  // await Hive.openBox(AppConstants.kFavoritesBox);
  // Hive.registerAdapter(ProductEntityAdapter());
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<WelcomeCubit>(),
        ),
        BlocProvider(
          create: (_) => sl<FavoritesCubit>()..getFavorite(),
        )
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 852),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'الجواهرجي',
            debugShowCheckedModeBanner: false,
            theme: ThemeManager.lightTheme,
            onGenerateRoute: RouteGenerator.getRoute,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale(
                AppConstants.arLocale,
              ),
              Locale(
                AppConstants.enLocale,
              ),
            ],
            builder: (context, child) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: child!,
              );
            },
          );
        },
      ),
    );
  }
}
