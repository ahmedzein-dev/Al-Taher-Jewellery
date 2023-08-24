part of 'favorites_cubit.dart';

abstract class FavoritesState extends Equatable {
  const FavoritesState();
}

class FavoritesInitial extends FavoritesState {
  @override
  List<Object> get props => [];
}

class FavoritesEmptyState extends FavoritesState {
  final String message;

  const FavoritesEmptyState({required this.message});

  @override
  List<Object> get props => [message];
}

class FavoritesSuccessState extends FavoritesState {
  final List<ProductEntity> products;

  const FavoritesSuccessState({required this.products});

  @override
  List<Object> get props => [products];
}
