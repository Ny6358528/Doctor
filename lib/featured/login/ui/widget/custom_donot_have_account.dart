import 'package:doctor_app/core/routing/routing_name.dart';
import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDonotHaveAccount extends StatelessWidget {
  const CustomDonotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Don’t have an account? ",
            style: AppTextStyles.text14grey(),
          ),

          GestureDetector(
            onTap: () {
              context.go(RoutingName.kSignUpScreen);
            },
            child: Text(
              "Sign Up",
              style: AppTextStyles.text14Blue().copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}