import 'package:doctor_hunt/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle font24Medium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xff000000),
  );
  static TextStyle font18Medium = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font16Light = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.greyColor,
  );
  static TextStyle font14Medium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
}
