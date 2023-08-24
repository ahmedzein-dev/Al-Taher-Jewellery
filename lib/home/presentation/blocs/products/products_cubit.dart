import 'dart:async';

import 'package:altaher_jewellery/core/enums/enums.dart';
import 'package:altaher_jewellery/home/domain/entities/home_entity.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:altaher_jewellery/home/domain/use_cases/get_all_products.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/use_cases/get_latest_products.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final GetAllProductsUseCase _getAllProductsUseCase;
  final GetLatestProductsUseCase _getLatestProductsUseCase;

//  Timer? _searchOnStoppedTyping;

  ProductsCubit(
    this._getAllProductsUseCase,
    this._getLatestProductsUseCase,
  ) : super(const ProductsState());

  Future<void> getProducts() async {
    emit(
      state.copyWith(
        getProductsState: RequestState.loading,
      ),
    );

    final result = await _getAllProductsUseCase();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getProductsState: RequestState.error,
            getProductsError: failure.toError().message,
          ),
        );
      },
      (homeEntity) {
        getLatestProducts();
        emit(
          state.copyWith(
            getProductsState: RequestState.success,
            homeEntity: homeEntity,
            //        searchedPosts: posts,
          ),
        );
      },
    );
  }

  Future<void> getLatestProducts() async {
    emit(
      state.copyWith(
        getLatestProductsState: RequestState.loading,
      ),
    );
    final result = await _getLatestProductsUseCase();
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getLatestProductsState: RequestState.error,
            getLatestProductsError: failure.toError().message,
          ),
        );
      },
      (latestProducts) async {
        emit(
          state.copyWith(
            getLatestProductsState: RequestState.success,
            latestProducts: latestProducts,
            //        searchedPosts: posts,
          ),
        );
      },
    );
  }

// onChangeHandler(String? value) {
//   const duration = Duration(milliseconds: 300);
//   if (_searchOnStoppedTyping != null) {
//     _searchOnStoppedTyping?.cancel();
//   }
//   _searchOnStoppedTyping = Timer(
//     duration,
//     () => _search(value),
//   );
// }
//
// void _search(String? value) {
//   if (value != null) {
//     emit(
//       state.copyWith(
//         filterState: FilterState.filtering,
//       ),
//     );
//
//     List<Post> newPosts;
//
//     if (value.isEmpty) {
//       newPosts = List<Post>.from(state.posts);
//     } else {
//       newPosts = List<Post>.from(state.posts).where((element) {
//         return element.title.contains(value);
//       }).toList();
//     }
//
//     emit(
//       state.copyWith(
//         searchedPosts: newPosts,
//         filterState: FilterState.done,
//       ),
//     );
//   }
// }

// @override
// Future<void> close() {
//   _searchOnStoppedTyping?.cancel();
//   return super.close();
// }
}
