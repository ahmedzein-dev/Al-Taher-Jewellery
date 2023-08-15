import 'package:flutter/material.dart';

import '../../managers/color_manager.dart';
import '../../managers/size_manager.dart';
import '../../utils/extensions.dart';

class LoadingDialog extends StatelessWidget {
  final bool isLoading;
  final String message;

  const LoadingDialog({
    Key? key,
    required this.isLoading,
    this.message = 'جاري التحميل',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading,
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Opacity(
            opacity: 0.4,
            child: ModalBarrier(
              dismissible: false,
              color: ColorManager.grey,
            ),
          ),
          Dialog(
            child: Padding(
              padding: const EdgeInsets.all(
                AppPadding.padding16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      '$message...',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: context.screenWidth() * 0.03,
                  ),
                  const CircularProgressIndicator(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
