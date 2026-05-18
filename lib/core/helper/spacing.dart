import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Spacing {
  static SizedBox verticalSpacing(double height) {
    return SizedBox(height: height.h);
  }

  static SizedBox horizontalSpacing(double width) {
    return SizedBox(width: width.w);
  }
}