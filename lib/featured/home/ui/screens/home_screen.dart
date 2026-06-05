import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:doctor_app/featured/home/logic/cubit/home_cubit.dart';
import 'package:doctor_app/featured/home/ui/widgets/app_bar_home_screen.dart';
import 'package:doctor_app/featured/home/ui/widgets/container_stack.dart';
import 'package:doctor_app/featured/home/ui/widgets/list_view_doctor_speciality.dart';
import 'package:doctor_app/featured/home/ui/widgets/list_view_recommendtion_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarHomeScreen(),
              SizedBox(height: 20.h),

              const ContainerStack(),
              SizedBox(height: 20.h),

              Expanded(
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox(),

                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),

                      failure: (message) => Center(
                        child: Text(
                          message ?? 'Something went wrong',
                        ),
                      ),

                      success: (data) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                'Doctor Speciality',
                                style: AppTextStyles.text18Black(),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            SizedBox(
                              height: 130.h,
                              child: LisyViewDoctorSpeciality(
                                specializationModdl: data.data,
                              ),
                            ),

                            SizedBox(height: 16.h),

                            Center(
                              child: Text(
                                'Recommendation Doctor',
                                style: AppTextStyles.text18Black(),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            Expanded(
                              child: ListViewRecommendtionDoctor(
                                specializationModdl:
                                    data.data.first.doctors,
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}