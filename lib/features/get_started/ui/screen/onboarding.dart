import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_medical_appointment/core/helper/extention.dart';
import 'package:my_medical_appointment/core/routes/routes.dart';

import 'package:my_medical_appointment/core/themes/app_text_style.dart';
import 'package:my_medical_appointment/core/widgets/app_logo_widget.dart';
import 'package:my_medical_appointment/core/widgets/primary_button.dart';
import 'package:my_medical_appointment/features/get_started/ui/widgets/doctor_boarding_image.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const AppLogoWidget(),
                  const SizedBox(
                    height: 40,
                  ),
                  const DoctorBoardingImage(),
                  Text(
                    "Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.normalGrey12,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 32),
                    child: PrimaryButton(
                      text: "Get Started",
                      ontap: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
