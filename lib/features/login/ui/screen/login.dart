import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_medical_appointment/core/themes/app_text_style.dart';
import 'package:my_medical_appointment/core/helper/spacing.dart';
import 'package:my_medical_appointment/core/widgets/doc_text_field.dart';
import 'package:my_medical_appointment/core/widgets/primary_button.dart';
import 'package:my_medical_appointment/features/login/ui/widgets/terms_and_condition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey formKey = GlobalKey<FormState>();
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    50.heightSpace,
                    Text(
                      'Welcome Back',
                      style: AppTextStyle.bold24Blue,
                    ),
                    8.heightSpace,
                    Text(
                      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                      style: AppTextStyle.normalGrey14,
                    ),
                    36.heightSpace,
                    const Expanded(child: SizedBox()),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          const DocTextField(name: "Email"),
                          16.heightSpace,
                          DocTextField(
                            name: "Password",
                            obscureText: isSecure,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isSecure = !isSecure;
                                });
                              },
                              icon: isSecure
                                  ? const Icon(Icons.visibility)
                                  : const Icon(
                                      Icons.visibility_off,
                                    ),
                            ),
                          ),
                          16.heightSpace,
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text(
                              'Forgot Password?',
                              style: AppTextStyle.normalPrimary12,
                            ),
                          ),
                          36.heightSpace,
                          PrimaryButton(
                            text: "Login",
                            ontap: () {},
                          ),
                          36.heightSpace,
                          const TermsAndCondition(),
                          36.heightSpace,
                        ],
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
