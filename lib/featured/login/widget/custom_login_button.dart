
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:flutter/material.dart';
class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {
          if (formKey.currentState!.validate()) {
            // login logic
          }
        },
        child: Text(
          "Login",
          style: AppTextStyles.text16White(),
        ),
      ),
    );
  }
}