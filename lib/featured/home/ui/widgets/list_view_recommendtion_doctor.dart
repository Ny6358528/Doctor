import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewRecommendtionDoctor extends StatelessWidget {
  const ListViewRecommendtionDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.vertical,
      
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              CircleAvatar(
                radius: 30.w,
                backgroundColor: AppColor.lightBlueColor,
                child: Image.asset(
                  'assets/images/imagedoctordown.png',
                  width: 110.w,
                  height: 110.h,
                ),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Randy Wigham',
                    style: AppTextStyles.text14Black(),
                  ),
                  Text(
                    'General | RSUD Gatot Subroto',
                    style: AppTextStyles.text14grey(),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent,
                        size: 16.sp,
                      ),
                      Text(
                        '(4,279 reviews)',
                        style: AppTextStyles.text14Black(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10.h);
        },
        itemCount: 10,
      ),
    );
  }
}
