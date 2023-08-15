import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../managers/color_manager.dart';

enum NotificationStatus {
  success,
  error,
  info,
}

enum ToastLength {
  short,
  long;

  Toast getLength() {
    switch (this) {
      case ToastLength.short:
        return Toast.LENGTH_SHORT;
      case ToastLength.long:
        return Toast.LENGTH_LONG;
    }
  }
}

Color _getColor(NotificationStatus notificationStatus) {
  switch (notificationStatus) {
    case NotificationStatus.success:
      return ColorManager.secondary;
    case NotificationStatus.error:
      return ColorManager.red;
    case NotificationStatus.info:
      return ColorManager.grey;
    default:
      return ColorManager.grey;
  }
}

void toggleSnackBar({
  required BuildContext context,
  required String content,
  required NotificationStatus status,
  SnackBarAction? action,
}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(
          content,
          style: const TextStyle(
            color: ColorManager.white,
          ),
        ),
        backgroundColor: _getColor(status),
        action: action,
      ),
    );
}

void showToast({
  required String content,
  required NotificationStatus status,
  required ToastLength length,
}) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: content,
    toastLength: length.getLength(),
    gravity: ToastGravity.BOTTOM,
    backgroundColor: _getColor(status),
    textColor: ColorManager.white,
    fontSize: 16.0.sp,
  );
}

String getTestResultMessage(String status) {
  if (status.contains('نقص')) {
    return 'المطلوب زيادته';
  }
  return 'المطلوب فقدانه';
}

Color getTestResultColor(String status) {
  if (status.contains('نقص')) {
    return ColorManager.primary;
  }
  return ColorManager.red;
}
