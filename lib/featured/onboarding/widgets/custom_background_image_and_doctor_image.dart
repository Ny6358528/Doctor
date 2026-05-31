import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utitls/app_images.dart';
import '../../../core/utitls/app_svg_image.dart';
import 'custom_centre_text_in_onboarding_body.dart';
import 'custom_elevated_button_in_onboarding.dart';

class CustomBackgroundImageAndDoctorImage extends StatelessWidget {
  const CustomBackgroundImageAndDoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              AppSvgImage.backgroundOnboardingLogoSvgImage,
              fit: BoxFit.contain,
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppImages.onboardingDoctorImage,
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [0.14, 0.4],
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.05),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: -50.h,
            left: 0.w,
            right: 0.w,
            child: const CustomCentreTextInOnboardingBody(),
          ),

     
          
        ],
      ),
    );
  }
}