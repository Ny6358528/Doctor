import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LisyViewDoctorSpeciality extends StatelessWidget {
  const LisyViewDoctorSpeciality({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
      
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              CircleAvatar(
                radius: 30.w,
                backgroundColor: AppColor.lightBlueColor,
                child: Image.asset(
                  'assets/images/imagesmalldoctor.png',
                  width: 20.w,
                  height: 20.h,
                ),
              ),
              SizedBox(height: 12.h),
              Text('General', style: AppTextStyles.text14Black()),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 10.w);
        },
        itemCount: 10,
      ),
    );
  }
}
