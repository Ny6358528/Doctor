
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:flutter/material.dart';
class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Forgot Password?",
          style: AppTextStyles.text13Blue(),
        ),
      ),
    );
  }
}
