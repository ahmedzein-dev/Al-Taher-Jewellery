import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:altaher_jewellery/currency/presentation/widgets/currency_exchange_card.dart';

import '../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/custom_app_bar.dart';
import '../widgets/currency_background_lines.dart';
import '../widgets/gold_exchange_card.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildTransparentAppBarWithTitle(title: 'أسعار اليوم'),
      body: Stack(
        children: [
          const CurrencyBackgroundLines(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.padding16,
              vertical: AppPadding.padding16,
            ),
            child: Column(
              children: [
                const GoldExchangeCard(
                  title: 'الذهب',
                ),
                SizedBox(
                  height: 25.h,
                ),
                const CurrencyExchangeCard(
                  title: 'الدولار',
                  currency: '1 USD',
                  price: ' 30.9 EGP',
                ),
                SizedBox(
                  height: 25.h,
                ),
                const CurrencyExchangeCard(
                  title: 'اليورو',
                  currency: '1 Eur',
                  price: '34.2 EGP',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
