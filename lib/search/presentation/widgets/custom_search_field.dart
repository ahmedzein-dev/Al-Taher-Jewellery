import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/managers/color_manager.dart';
import '../../../core/managers/size_manager.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final TextInputType? inputType;
  final bool isPassword;
  final IconData? suffix;
  final Widget? prefix;
  final VoidCallback? onSuffixPressed;
  final VoidCallback? onPrefixPressed;
  final String? Function(String?)? validator;
  final bool enabled;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String)? onFieldSubmitted;
  final Function(String?)? onChanged;

  const CustomSearchField({
    Key? key,
    this.controller,
    this.hint,
    this.inputType,
    this.isPassword = false,
    this.suffix,
    this.prefix,
    this.onSuffixPressed,
    this.onPrefixPressed,
    this.validator,
    this.enabled = true,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.screenBodyPadding.h,
      ),
      child: Container(
        alignment: Alignment.center,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius25.r,
          ),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              const Color(0xFF295D6D),
              const Color(0xFF295D6D).withOpacity(.5),
            ],
          ),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: inputType,
          obscureText: isPassword,
          readOnly: readOnly,
          onTap: onTap,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          textAlignVertical: TextAlignVertical.center,
          validator: validator,
          enabled: enabled,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            hintText: hint,
            hintStyle: const TextStyle(
              color: Colors.white70,
            ),
            prefixIcon: InkWell(
              onTap: onPrefixPressed,
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppPadding.padding8.w,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.padding16.w,
                  ),
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadius.circular(
                      AppRadius.borderRadius25.r,
                    ),
                  ),
                  child: prefix,
                ),
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: onSuffixPressed,
              child: Icon(
                suffix,
                color: ColorManager.genderTitle,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(
                AppRadius.borderRadius25.r,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(
                AppRadius.borderRadius25.r,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 0,
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(
                AppRadius.borderRadius25.r,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                width: 1,
                color: ColorManager.grey300,
              ),
              borderRadius: BorderRadius.circular(
                AppRadius.borderRadius25.r,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
