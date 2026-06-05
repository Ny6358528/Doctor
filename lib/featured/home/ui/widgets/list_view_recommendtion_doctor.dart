import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:doctor_app/featured/home/data/model/home_respone_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewRecommendtionDoctor extends StatelessWidget {
  const ListViewRecommendtionDoctor({
    super.key,
    required this.specializationModdl,
  });

  final List<Doctor> specializationModdl;

  @override
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: specializationModdl.length,
      separatorBuilder: (_, __) => SizedBox(height: 10.h),
      itemBuilder: (context, index) {
        final doctor = specializationModdl[index];

        return Row(
          children: [
            CircleAvatar(
              radius: 30.w,
              backgroundColor: AppColor.lightBlueColor,
              child: Image.asset(
                'assets/images/imagedoctordown.png',
                width: 40.w,
                height: 40.h,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.text14Black(),
                  ),
                  Text(
                    '${doctor.specialization.name} | ${doctor.phone}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.text14grey(),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16.sp),
                      SizedBox(width: 4.w),
                      Text('(4.8 Reviews)', style: AppTextStyles.text14Black()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
