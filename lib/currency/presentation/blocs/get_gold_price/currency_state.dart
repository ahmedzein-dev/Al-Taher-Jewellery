part of 'currency_cubit.dart';

abstract class CurrencyState extends Equatable {
  const CurrencyState();
}

class CurrencyInitial extends CurrencyState {
  @override
  List<Object> get props => [];
}

class GetCurrencyLoading extends CurrencyState {
  @override
  List<Object> get props => [];
}

class GetCurrencySuccess extends CurrencyState {
  final GoldModel goldModel;

  const GetCurrencySuccess({required this.goldModel});

  @override
  List<Object> get props => [];
}

class GetCurrencyFailure extends CurrencyState {
  final String message;

  const GetCurrencyFailure({required this.message});

  @override
  List<Object> get props => [message];
}
