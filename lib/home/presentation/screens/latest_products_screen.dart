import 'package:altaher_jewellery/home/presentation/widgets/latest_product_screen_background_lines.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/enums/enums.dart';
import '../../../core/managers/size_manager.dart';
import '../../../core/shared/widgets/failure_widget.dart';
import '../../../core/shared/widgets/loading_indicator.dart';
import '../blocs/products/products_cubit.dart';
import '../widgets/latest_products_list_items.dart';

class LatestProductsScreen extends StatelessWidget {
  const LatestProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const LatestProductsBackgroundLines(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPadding.padding10.w,
              vertical: AppPadding.padding16.h,
            ),
            child: BlocBuilder<ProductsCubit, ProductsState>(
              buildWhen: (previous, current) {
                return previous.getLatestProductsState !=
                        current.getLatestProductsState ||
                    current.getProductsState == RequestState.error;
              },
              builder: (context, state) {
                if (state.getProductsState == RequestState.error) {
                  return FailureWidget(
                    message: state.getProductsError ?? 'حدث خطأ ما',
                    onRetry: () {
                      context.read<ProductsCubit>().getProducts();
                    },
                  );
                }
                if (state.getLatestProductsState == RequestState.loading) {
                  return showLoadingIndicator();
                }
                if (state.getLatestProductsState == RequestState.error) {
                  return FailureWidget(
                    message: state.getLatestProductsError ?? 'حدث خطأ ما',
                    onRetry: () {
                      context.read<ProductsCubit>().getLatestProducts();
                    },
                  );
                }
                return LatestProductsListItems(
                  products: state.latestProducts,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
