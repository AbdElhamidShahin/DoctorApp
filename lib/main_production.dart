import 'package:doctor_app_flutter/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';
import 'core/theming/colors.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: AppColors.blueMain),
  );

  runApp(const DocApp());
}
// flutter build apk --flavor Production -t lib/main_production.dart
//flutter run  --flavor Development -t lib/main_development.dart
//fastlane android firebase_distribution