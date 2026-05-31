import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/themeing/text_style.dart';
import '../../../core/utitls/app_svg_image.dart';

class LogoDocDocTitleInOnboardingBody extends StatelessWidget {
  const LogoDocDocTitleInOnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppSvgImage.logoDoctorImage),
        const SizedBox(width: 8),
        Text(
          'DocDoc',
          style: AppTextStyles.text20BlackBold(),
        ),
      ],
    );
  }
}