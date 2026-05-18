import 'package:doctor_app/core/routing/routing_name.dart';
import 'package:flutter/material.dart';

import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:go_router/go_router.dart';

class CustomElevatedButtonInOnboarding extends StatelessWidget {
  const CustomElevatedButtonInOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primaryColor,
            foregroundColor: AppColor.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: () {
              print("pressed");
        GoRouter.of(context).go(RoutingName.kLoginScreen);
          },
          child: const Text('Get Started'),
        ),
      ),
    );
  }
}