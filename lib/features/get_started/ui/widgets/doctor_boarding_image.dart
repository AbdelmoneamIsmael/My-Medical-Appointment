import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_medical_appointment/core/generation/icons.dart';
import 'package:my_medical_appointment/core/generation/image.dart';
import 'package:my_medical_appointment/core/themes/app_color.dart';
import 'package:my_medical_appointment/core/themes/app_text_style.dart';

class DoctorBoardingImage extends StatelessWidget {
  const DoctorBoardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AssetsIcons.logoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.whiteColor,
                AppColors.whiteColor.withOpacity(0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [.14, .4],
            ),
          ),
          child: Image.asset(ImageAssets.doctorImage),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            "Best Doctor \n Appointment App",
            textAlign: TextAlign.center,
            style: AppTextStyle.bold32Blue,
          ),
        ),
      ],
    );
  }
}
