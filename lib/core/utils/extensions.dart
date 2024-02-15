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
  bool hasFocus() {
    return FocusScope.of(this).hasFocus;
  }

  void unFocus() {
    FocusScope.of(this).unfocus();
  }
}

extension ParseToInt on String {
  int parseToInt() => int.parse(this);
}

extension ParseToDouble on String {
  double parseToDouble() => double.parse(this);
}
