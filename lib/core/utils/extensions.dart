import 'package:flutter/material.dart';

extension ScreenSizeExtension on BuildContext {
  double screenWidth() {
    return MediaQuery.of(this).size.width;
  }

  double screenHeight() {
    return MediaQuery.of(this).size.height;
  }
}

extension UnfocusExtension on BuildContext {
  void unFocus() {
    FocusScope.of(this).unfocus();
  }
}
