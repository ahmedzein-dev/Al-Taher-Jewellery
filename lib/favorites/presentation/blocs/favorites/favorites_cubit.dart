import 'dart:developer';

import 'package:altaher_jewellery/core/constants/constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../home/domain/entities/product_entity.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  HiveInterface hive;

  FavoritesCubit(this.hive) : super(FavoritesInitial());
  List<ProductEntity> favoriteList = [];

  void getFavorite() {
    log('getFavorite');
    Box<ProductEntity> favoriteBox =
        hive.box<ProductEntity>(AppConstants.kFavoritesBox);
    List<ProductEntity> favorites = favoriteBox.values.toList();
    if (favorites.isNotEmpty) {
      favoriteList = favorites;
      emit(
        FavoritesSuccessState(
          favorites: favorites,
        ),
      );
    } else {
      favoriteList = [];
      emit(
        const FavoritesEmptyState(
          message:
              'لا يوجد لديك منتجات مفضلة قم باضافة المنتجات التي أعجبتك الى مفضلتك',
        ),
      );
    }
  }

  bool isProductInFavorites(String productId) {
    if (favoriteList.isEmpty) {
      return false;
    }
    bool any = favoriteList.any((product) => product.id == productId);
    return any;
  }
}
