import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ContainerStack extends StatelessWidget {
  const ContainerStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200.h,
          child: SvgPicture.asset(
            'assets/svg/Background.svg',
            fit: BoxFit.cover,
          ),
        ),
    
        Positioned(
          left: 16.w,
          top: 16.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book and\nschedule with\nnearest doctor',
                style: AppTextStyles.text18white(),
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColor.primaryColor,
                ),
                onPressed: () {},
                child: const Text('Find Nearby'),
              ),
            ],
          ),
        ),
    
        Positioned(
          right: -30,
          bottom: -8,
          child: Image.asset(
            'assets/images/doctor.png',
            fit: BoxFit.contain,
            filterQuality: FilterQuality.low,
            width: 240.w,
            height: 250.h,
          ),
        ),
      ],
    );
  }
}
