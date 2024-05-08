import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_medical_appointment/core/generation/icons.dart';
import 'package:my_medical_appointment/core/themes/app_text_style.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AssetsIcons.docdocLogo),
          const SizedBox(
            width: 10,
          ),
          Text(
            "DocDoc",
            style: AppTextStyle.bold32,
          )
        ],
      ),
    );
  }
}
