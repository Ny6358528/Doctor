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

   static TextStyle text16White() {
    return  TextStyle(
      fontSize: 16.sp,

      color: Colors.white,
       fontWeight: FontWeight.w600,
    );
  }
   static TextStyle text12Black() {
    return  TextStyle(
      fontSize: 12.sp,
   
      color: Colors.black,
    );
  }
 
  static TextStyle text14grey() {
    return  TextStyle(
      fontSize: 14.sp,

      color: AppColor.geryColor,
       fontWeight: FontWeight.w400,
    );
  }
  static TextStyle text18white() {
    return  TextStyle(
      fontSize: 18.sp,

      color: Colors.white,
       fontWeight: FontWeight.w700,
    );
  }
  static TextStyle text18Black() {
    return  TextStyle(
      fontSize: 18.sp,

      color: Colors.black,
       fontWeight: FontWeight.w700,
    );
  }
   static TextStyle text14Black() {
    return  TextStyle(
      fontSize: 14.sp,
color: Colors.black,
       fontWeight: FontWeight.w400,
    );
  }
   static TextStyle text14Blue() {
    return  TextStyle(
          fontSize: 14.sp,
       fontWeight: FontWeight.w400,
      color: AppColor.primaryColor,
    );
  }
  static TextStyle text32BlueBold() {
    return  TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.primaryColor,
    );
  }

   static TextStyle text24BlueBold() {
    return  TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.primaryColor,
    );
    }
     static TextStyle text13Blue() {
    return  TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.w400,
      color: AppColor.primaryColor,
    );
    }
}