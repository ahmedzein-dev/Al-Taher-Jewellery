import 'package:altaher_jewellery/core/constants/constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../home/domain/entities/product_entity.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  HiveInterface hive;

  FavoritesCubit(this.hive) : super(FavoritesInitial());

  Future<void> getFavorite() async {}

  Future<void> addToFavorite(ProductEntity product) async {
    Box favoriteBox = hive.box<ProductEntity>(AppConstants.kFavoritesBox);
    await favoriteBox.add(product);
  }

  Future<void> removeFromFavorite(String id) async {
    Box favoriteBox = hive.box(AppConstants.kFavoritesBox);
    //  await favoriteBox.de(product);
  }
}
