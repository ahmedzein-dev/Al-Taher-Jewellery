import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../../core/constants/constants.dart';
import '../../../../home/domain/entities/product_entity.dart';

part 'add_delete_favorite_state.dart';

class AddDeleteFavoriteCubit extends Cubit<AddDeleteFavoriteState> {
  HiveInterface hive;

  AddDeleteFavoriteCubit(this.hive) : super(AddDeleteFavoriteInitial());

  Future<void> addToFavorite(ProductEntity product) async {
    try {
      Box favoriteBox = hive.box<ProductEntity>(AppConstants.kFavoritesBox);
      await favoriteBox.add(product);
      emit(
        AddToFavoritesSuccessState(),
      );
    } catch (e) {
      emit(AddDeleteFavoriteErrorState(
        message: e.toString(),
      ));
    }
  }

  Future<void> deleteFromFavorite(ProductEntity product) async {
    try {
      await product.delete();
      emit(
        DeleteFromFavoritesSuccessState(),
      );
    } catch (e) {
      emit(AddDeleteFavoriteErrorState(
        message: e.toString(),
      ));
    }
  }
}
