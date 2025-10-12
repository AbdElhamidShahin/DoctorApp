import 'package:doctor_app_flutter/core/theming/colors.dart';
import 'package:doctor_app_flutter/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFeild extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backGroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  const AppTextFormFeild({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backGroundColor,
    this.inputTextStyle,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true, //defult pading
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.lighterGray, width: 1.3),
              borderRadius: BorderRadius.circular(16),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.blueMain, width: 1.3),

              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle:
            hintStyle ??
            textStyle14.copyWith(
              color: AppColors.lighterGray,
              fontWeight: FontWeight.w500,
            ),
        hintText: "${hintText}",
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.blueMain,

        fillColor: backGroundColor ?? AppColors.moreLightGray,
        filled: true,
      ),
      obscureText: isObscureText ?? false, //تظهر الكلام كنجوم

      style: textStyle14.copyWith(color: AppColors.darkBlue),
      validator: (value) {
        return validator(value);
      },
    );
  }
}
