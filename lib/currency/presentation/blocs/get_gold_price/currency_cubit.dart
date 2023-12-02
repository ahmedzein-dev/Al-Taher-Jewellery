import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/gold_model.dart';
import '../../../domain/repositories/currency_repository.dart';

part 'currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  final CurrencyRepository currencyRepository;

  CurrencyCubit({required this.currencyRepository}) : super(CurrencyInitial());

  Future<void> getGoldPrice() async {
    emit(GetCurrencyLoading());

    final result = await currencyRepository.getGoldPrice();
    result.fold(
      (failure) {
        emit(
          GetCurrencyFailure(
            message: failure.toError().message,
          ),
        );
      },
      (goldModel) {
        emit(
          GetCurrencySuccess(goldModel: goldModel),
        );
      },
    );
  }
}
