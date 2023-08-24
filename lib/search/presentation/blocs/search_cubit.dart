import 'package:altaher_jewellery/core/constants/constants.dart';
import 'package:altaher_jewellery/core/enums/enums.dart';
import 'package:altaher_jewellery/home/domain/entities/home_entity.dart';
import 'package:altaher_jewellery/home/domain/entities/product_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final TextEditingController searchController = TextEditingController();

  SearchCubit() : super(SearchInitial());

  search(HomeEntity homeEntity) {
    Categories targetedCategory = getTargetedCategory();
    getProductsByCategory(targetedCategory, homeEntity);
  }

  Categories getTargetedCategory() {
    return Categories.values.firstWhere(
      (category) => category.title.startsWith(
        searchController.text.length == 1
            ? searchController.text
            : searchController.text.substring(0, 2),
      ),
      orElse: () => Categories.notFound,
    );
  }

  getProductsByCategory(Categories category, HomeEntity homeEntity) {
    switch (category.getTitle()) {
      case AppConstants.bars:
        emit(
          SearchSuccessState(
            products: homeEntity.bars,
          ),
        );
        break;
      case AppConstants.necklaces:
        emit(
          SearchSuccessState(
            products: homeEntity.necklaces,
          ),
        );
        return homeEntity.necklaces;
      case AppConstants.earrings:
        emit(
          SearchSuccessState(
            products: homeEntity.earrings,
          ),
        );
        break;
      case AppConstants.bracelets:
        emit(
          SearchSuccessState(
            products: homeEntity.bracelets,
          ),
        );
        break;
      case AppConstants.rings:
        emit(
          SearchSuccessState(
            products: homeEntity.rings,
          ),
        );
        break;
      default:
        emit(
          const SearchEmptyState(
            message: 'عفوا هذا المنتج غير موجود.',
          ),
        );
    }
  }

  filterAllProductsByWeight(
    HomeEntity homeEntity,
    String weight,
  ) {
    List<ProductEntity> products = [];
    products.addAll(homeEntity.rings);
    products.addAll(homeEntity.bracelets);
    products.addAll(homeEntity.bars);
    products.addAll(homeEntity.necklaces);
    products.addAll(homeEntity.earrings);
    List<ProductEntity> filteredProducts = products.where((product) {
      return product.weight.contains(weight);
    }).toList();
    if (filteredProducts.isEmpty) {
      emit(
        const FilterEmptyState(
          message: 'عفوا هذا المنتج غير موجود.',
        ),
      );
    } else {
      emit(
        FilterSuccessState(
          products: filteredProducts,
        ),
      );
    }
  }

  filterCategoryProductsByWeight(
    List<ProductEntity> products,
    String weight,
  ) {
    List<ProductEntity> filteredProducts = [];
    filteredProducts = products.where((product) {
      return product.weight.contains(weight);
    }).toList();
    if (filteredProducts.isEmpty) {
      emit(
        const FilterEmptyState(
          message: 'عفوا هذا المنتج غير موجود.',
        ),
      );
    } else {
      emit(
        FilterSuccessState(
          products: filteredProducts,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }
}
