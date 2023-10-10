part of 'filter_search_cubit.dart';

class FilterSearchState extends Equatable {
  final FilterEnum? filter;

  const FilterSearchState({
    this.filter,
  });

  FilterSearchState copyWith({
    FilterEnum? filter,
  }) {
    return FilterSearchState(
      filter: filter,
    );
  }

  @override
  List<Object?> get props => [
        filter,
      ];
}
