import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.obscureText = false,
    this.hintText,
    this.suffixIcon,
    this.hintStyle,
    this.contentPadding,
  });

  final bool obscureText;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      obscureText: obscureText,
      style: AppTextStyles.text12Black(),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.lightergeryColor,
        hintStyle: hintStyle ?? AppTextStyles.text14grey(),
        isDense: true,

        contentPadding:
            contentPadding ??
            const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),

        hintText: hintText,
        suffixIcon: suffixIcon,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColor.lightgeryColor,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColor.lightgeryColor,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColor.primaryColor,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColor.redErrorColor,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColor.redErrorColor,
          ),
        ),
      ),
    );
  }
}