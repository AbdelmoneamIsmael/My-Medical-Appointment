import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_medical_appointment/core/themes/app_color.dart';
import 'package:my_medical_appointment/core/themes/app_text_style.dart';

class DocTextField extends StatelessWidget {
  const DocTextField(
      {super.key,
      required this.name,
      this.suffixIcon,
      this.obscureText = false});
  final String name;
  final Widget? suffixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteGreyColor,
        hintText: name,
        hintStyle: AppTextStyle.medium16HintGrey,
        suffixIcon: suffixIcon,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1.5,
            color: AppColors.grey50,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1.5,
            color: AppColors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1.5,
            color: AppColors.primaryeColor,
          ),
        ),
      ),
    );
  }
}
