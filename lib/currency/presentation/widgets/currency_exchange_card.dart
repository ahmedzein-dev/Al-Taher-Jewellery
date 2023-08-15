import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:altaher_jewellery/core/managers/size_manager.dart';
import 'package:altaher_jewellery/core/managers/text_styles_manager.dart';

class CurrencyExchangeCard extends StatelessWidget {
  final String title;
  final String currency;
  final String price;

  const CurrencyExchangeCard({
    super.key,
    required this.title,
    required this.currency,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: ColorManager.rectangleCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppRadius.borderRadius20.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppPadding.padding16.h,
          horizontal: AppPadding.padding24.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyleManager.black_20BOLD.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppPadding.padding25.w,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.padding20,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorManager.black,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(
                    AppRadius.borderRadius15,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      textDirection: TextDirection.ltr,
                      style: TextStyleManager.black_18,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppPadding.padding4.w,
                        vertical: AppPadding.padding12.h,
                      ),
                      decoration: BoxDecoration(
                        color: ColorManager.black,
                        borderRadius: BorderRadius.circular(
                          AppRadius.borderRadius15.r,
                        ),
                      ),
                      child: const Icon(
                        Icons.currency_exchange_outlined,
                        color: ColorManager.primary,
                      ),
                    ),
                    Text(
                      currency,
                      textDirection: TextDirection.ltr,
                      style: TextStyleManager.black_18,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
          ],
        ),
      ),
    );
  }
}
