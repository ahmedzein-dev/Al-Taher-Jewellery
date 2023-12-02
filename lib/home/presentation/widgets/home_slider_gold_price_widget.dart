import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:altaher_jewellery/currency/data/models/gold_model.dart';
import 'package:altaher_jewellery/currency/presentation/blocs/get_gold_price/currency_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/managers/text_styles_manager.dart';
import '../../../core/shared/widgets/failure_widget.dart';
import '../../../core/shared/widgets/loading_indicator.dart';
import 'gold_price_widget.dart';

class HomeSliderGoldPriceWidget extends StatelessWidget {
  const HomeSliderGoldPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
      child:
          BlocBuilder<CurrencyCubit, CurrencyState>(builder: (context, state) {
        if (state is GetCurrencyLoading) {
          return showLoadingIndicator(
            ColorManager.white,
          );
        }
        if (state is GetCurrencyFailure) {
          return FailureWidget(
            message: state.message,
            color: ColorManager.white,
            onRetry: () {
              context.read<CurrencyCubit>().getGoldPrice();
            },
          );
        }
        if (state is GetCurrencySuccess) {
          final GoldModel goldModel = state.goldModel;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'أسعار الذهب اليوم',
                style: TextStyleManager.white_24ALMARAI.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GoldPriceRowWidget(
                  label: 'ذهب عيار 24', price: goldModel.karat24),
              const SizedBox(
                height: 8,
              ),
              GoldPriceRowWidget(
                  label: 'ذهب عيار 21', price: goldModel.karat21),
              const SizedBox(
                height: 8,
              ),
              GoldPriceRowWidget(
                  label: 'ذهب عيار 18', price: goldModel.karat18),
            ],
          );
        }

        return FailureWidget(
          message: 'حدث خطأ ما',
          color: ColorManager.white,
          onRetry: () {
            context.read<CurrencyCubit>().getGoldPrice();
          },
        );
      }),
    );
  }
}
