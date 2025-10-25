import 'package:doctor_app_flutter/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/dependency_injection.dart';

void main() async{
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(const DocApp());
}
///  flutter run --flavor development -t lib/main_development.dart
