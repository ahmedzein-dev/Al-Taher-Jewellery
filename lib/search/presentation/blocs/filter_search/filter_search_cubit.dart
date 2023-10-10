import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enums/filter_enum.dart';

part 'filter_search_state.dart';

class FilterSearchCubit extends Cubit<FilterSearchState> {
  FilterSearchCubit() : super(const FilterSearchState());

  void initFilters(FilterEnum? value) {
    emit(
      state.copyWith(
        filter: value,
      ),
    );
  }

  void changeFilter(FilterEnum value) {
    emit(
      state.copyWith(
        filter: value,
      ),
    );
  }
}
