import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:doctor_app/featured/home/data/model/home_respone_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LisyViewDoctorSpeciality extends StatelessWidget {
  const LisyViewDoctorSpeciality({
    super.key,
    required this.specializationModdl,
  });

  final List<Specialization> specializationModdl;

  @override
  Widget build(BuildContext context) {
   return SizedBox(
  height: 130.h,
  child: ListView.separated(
    scrollDirection: Axis.horizontal,
    itemCount: specializationModdl.length,
    separatorBuilder: (_, __) => SizedBox(width: 12.w),
    itemBuilder: (context, index) {
      final specialization = specializationModdl[index];

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 25.w,
            backgroundColor: AppColor.lightBlueColor,
            child: Image.asset(
              'assets/images/imagesmalldoctor.png',
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(height: 8.h),
          SizedBox(
            width: 80.w,
            child: Text(
  specialization.name.length > 8
      ? '${specialization.name.substring(0, 8)}...'
      : specialization.name,
  textAlign: TextAlign.center,
  style: AppTextStyles.text14Black(),
)
          ),
        ],
      );
    },
  ),
);
  }
}