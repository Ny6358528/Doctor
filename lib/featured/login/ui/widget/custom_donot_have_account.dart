
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:flutter/material.dart';
class CustomDonotHaveAccount extends StatelessWidget {
  const CustomDonotHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: "Don’t have an account? ",
          style: AppTextStyles.text14grey(),
          children: [
            TextSpan(
              text: "Sign Up",
              style: AppTextStyles.text14Blue(),
            ),
          ],
        ),
      ),
    );
  }
}
