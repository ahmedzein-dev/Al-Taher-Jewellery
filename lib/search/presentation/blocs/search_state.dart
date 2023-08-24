part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();
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

class FilterEmptyState extends SearchState {
  final String message;

  const FilterEmptyState({required this.message});

  @override
  List<Object> get props => [message];
}

class FilterSuccessState extends SearchState {
  final List<ProductEntity> products;

  const FilterSuccessState({required this.products});

  @override
  List<Object> get props => [products];
}
