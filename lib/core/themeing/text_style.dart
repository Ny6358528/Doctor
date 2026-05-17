import 'package:doctor_app/core/utitls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle text20BlackBold() {
    return  TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }
  static TextStyle text12Black() {
    return  TextStyle(
      fontSize: 12.sp,

      color: Colors.black,
    );
  }
  static TextStyle text32BlueBold() {
    return  TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.primaryColor,
    );
  }
}