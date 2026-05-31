import 'package:flutter/material.dart';

import '../../../core/themeing/text_style.dart';

class CustomCentreTextInOnboardingBody extends StatelessWidget {
  const CustomCentreTextInOnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text(
          'Best Doctor',
          textAlign: TextAlign.center,
          style: AppTextStyles.text32BlueBold(),
        ),
        Text(
          'Appointment App',
          textAlign: TextAlign.center,
          style: AppTextStyles.text32BlueBold(),
        ),
        const SizedBox(height: 16),
        Text(
          'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
          textAlign: TextAlign.center,
          style: AppTextStyles.text12Black(),
        ),
      ],
    );
  }
}