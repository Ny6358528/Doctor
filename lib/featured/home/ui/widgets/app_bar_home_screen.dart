import 'package:doctor_app/core/themeing/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
             
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Hi, Omar!', style: AppTextStyles.text20BlackBold()),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,size: 30.sp,)),
          ],
        ),
          Text('How Are you Today?', style: AppTextStyles.text14grey()),
      ],
    );
  }
}