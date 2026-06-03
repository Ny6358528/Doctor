import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/featured/home/ui/widgets/app_bar_home_screen.dart';
import 'package:doctor_app/featured/home/ui/widgets/container_stack.dart';
import 'package:doctor_app/featured/home/ui/widgets/list_view_doctor_speciality.dart';
import 'package:doctor_app/featured/home/ui/widgets/list_view_recommendtion_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarHomeScreen(),
              SizedBox(height: 20.h),
              ContainerStack(),
              SizedBox(height: 20.h),
              Text('Doctor Speciality', style: AppTextStyles.text18Black()),
              SizedBox(height: 12.h),
              LisyViewDoctorSpeciality(),
         
              Text('Recommendation Doctor', style: AppTextStyles.text18Black()),
              SizedBox(height: 12.h),
              ListViewRecommendtionDoctor(),
            ],
          ),
        ),
      ),
    );
  }
}
