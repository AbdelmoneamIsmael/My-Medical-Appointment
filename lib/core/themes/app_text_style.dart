import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_medical_appointment/core/themes/app_color.dart';

class AppTextStyle {
  //bold text
  static TextStyle bold32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static TextStyle bold32Blue = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blueColor,
  );
  static TextStyle bold24Blue = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blueColor,
  );
  //normal text
  static TextStyle normalGrey12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grey100,
  );
  static TextStyle normalPrimary12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryeColor,
  );
  static TextStyle normalGrey14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grey100,
  );
  // semi bold text
  static TextStyle semiBold16white = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );
  // medium text
  static TextStyle medium16HintGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.grey50,
  );
  static TextStyle medium12Grey = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryeColor,
  );
  static TextStyle medium12black = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );
}
