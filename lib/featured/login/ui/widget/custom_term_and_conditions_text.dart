
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:flutter/material.dart';
class CustomTermaAndConditionsText extends StatelessWidget {
  const CustomTermaAndConditionsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text.rich(
        TextSpan(
          text: "By logging in, you agree to our ",
          style: AppTextStyles.text14grey(),
          children: [
            TextSpan(
              text: "Terms & Conditions",
              style: AppTextStyles.text12Black(),
            ),
            TextSpan(text: " and "),
            TextSpan(
              text: "Privacy Policy",
              style: AppTextStyles.text12Black(),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
