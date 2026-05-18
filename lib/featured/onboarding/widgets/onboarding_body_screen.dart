import 'package:doctor_app/featured/onboarding/widgets/custom_elevated_button_in_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/core/utitls/app_color.dart';


import 'logo_doc_doc_title_in_onboarding_body.dart';
import 'custom_background_image_and_doctor_image.dart';


class OnboardingBodyScreen extends StatelessWidget {
  const OnboardingBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                LogoDocDocTitleInOnboardingBody(),

                SizedBox(height: 30),

                CustomBackgroundImageAndDoctorImage(),
                 SizedBox(height: 90),



   CustomElevatedButtonInOnboarding(),





              ],
            ),
          ),
        ),
      ),
    );
  }
}