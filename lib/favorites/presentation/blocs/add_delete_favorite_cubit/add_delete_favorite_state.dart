part of 'add_delete_favorite_cubit.dart';

abstract class AddDeleteFavoriteState extends Equatable {
  const AddDeleteFavoriteState();
}

class AddDeleteFavoriteInitial extends AddDeleteFavoriteState {
  @override
  List<Object> get props => [];
}

class AddToFavoritesSuccessState extends AddDeleteFavoriteState {
  @override
  List<Object?> get props => [];
}

class DeleteFromFavoritesSuccessState extends AddDeleteFavoriteState {
  @override
  List<Object?> get props => [];
}

class AddDeleteFavoriteErrorState extends AddDeleteFavoriteState {
  final String message;

  const AddDeleteFavoriteErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
