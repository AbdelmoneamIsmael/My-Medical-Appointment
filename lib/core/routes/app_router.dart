import 'package:flutter/material.dart';
import 'package:my_medical_appointment/core/routes/routes.dart';
import 'package:my_medical_appointment/features/get_started/ui/screen/onboarding.dart';
import 'package:my_medical_appointment/features/login/ui/screen/login.dart';

class AppRoutes {
  Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text("No Page Found"),
                  ),
                ));
    }
  }
}
