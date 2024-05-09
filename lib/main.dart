import 'package:flutter/material.dart';
import 'package:my_medical_appointment/core/routes/app_router.dart';
import 'package:my_medical_appointment/doc_app.dart';

void main() {
  runApp(
    DocApp(
      appRoutes: AppRoutes(),
    ),
  );
}
