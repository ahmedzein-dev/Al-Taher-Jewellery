import 'package:altaher_jewellery/core/managers/color_manager.dart';
import 'package:flutter/material.dart';

Widget showLoadingIndicator() {
  return const Center(
    child: CircularProgressIndicator(
      color: ColorManager.secondary,
    ),
  );
}
