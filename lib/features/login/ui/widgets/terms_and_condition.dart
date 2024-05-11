import 'package:flutter/material.dart';
import 'package:my_medical_appointment/core/themes/app_text_style.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppTextStyle.normalGrey12,
        children: [
          const TextSpan(text: "By logging, you agree to our "),
          TextSpan(
            text: " Terms & Conditions  ",
            style: AppTextStyle.medium12black,
          ),
          const TextSpan(text: "and "),
          TextSpan(
            text: "PrivacyPolicy .",
            style: AppTextStyle.medium12black,
          ),
        ],
      ),
    );
  }
}
