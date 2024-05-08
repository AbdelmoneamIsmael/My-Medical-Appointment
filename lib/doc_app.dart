import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_medical_appointment/core/routes/app_router.dart';
import 'package:my_medical_appointment/core/routes/routes.dart';
import 'package:my_medical_appointment/core/themes/app_color.dart';

class DocApp extends StatelessWidget {
  const DocApp({
    super.key,
    required this.appRoutes,
  });
  final AppRoutes appRoutes;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      // splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: AppColors.primaryeColor,
            scaffoldBackgroundColor: AppColors.whiteColor,
          ),
          onGenerateRoute: appRoutes.getRoute,
          initialRoute: Routes.onBoarding,
        );
      },
    );
  }
}
