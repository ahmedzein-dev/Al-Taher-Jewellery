import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:flutter/material.dart';

Widget showLoadingIndicator([Color? color]) {
  return Center(
    child: CircularProgressIndicator(
      color: color ?? ColorManager.secondary,
    ),
  );
}
