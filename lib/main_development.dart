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
///  1//03V_HItQ61mSeCgYIARAAGAMSNwF-L9IrfQ_O-Ce1a8-fDkBkAVAE5lK2CKt3FoP5djSwe7AxlAU7AryPRVkle0H0jxJm-XF7bgY