part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();
  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchEmptyState extends SearchState {
  final String message;

  const SearchEmptyState({required this.message});

  @override
  List<Object> get props => [message];
}

class SearchSuccessState extends SearchState {
  final List<ProductEntity> products;

  const SearchSuccessState({required this.products});

  @override
  List<Object> get props => [products];
}

// class FilterEmptyState extends SearchState {
//   final String message;
//
//   const FilterEmptyState({required this.message});
//
//   @override
//   List<Object> get props => [message];
// }

// class SearchedFilterApplied extends SearchState {
//   final List<ProductEntity> products;
//
//   const SearchedFilterApplied({required this.products});
//
//   @override
//   List<Object> get props => [products];
// }

class SearchedFilterApplied extends SearchState {
  final FilterEnum filter;

  const SearchedFilterApplied(this.filter);

  @override
  List<Object> get props => [filter];
}

class SearchedFilterCleared extends SearchState {}

class FavoritesSearch extends SearchState {
  final String value;

  const FavoritesSearch(this.value);

  @override
  List<Object> get props => [value];
}

class FavoritesSearchCleared extends SearchState {}
