import 'package:doctor_app/core/routing/routing_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utitls/app_color.dart';

class Docdoc extends StatelessWidget {
  const Docdoc({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize:  Size(375, 812 ),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (_ , child) {
        return MaterialApp.router(
          routerConfig: RoutingApp.router,
          debugShowCheckedModeBanner: false,
          title: 'DocDoc',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
           scaffoldBackgroundColor: AppColor.whiteColor

          ),

        );
      },

    );
  }
}