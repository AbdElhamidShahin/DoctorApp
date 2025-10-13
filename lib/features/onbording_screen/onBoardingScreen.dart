import 'package:doctor_app_flutter/features/onbording_screen/widget/custom_image_doctor_and_text.dart';
import 'package:doctor_app_flutter/features/onbording_screen/widget/custom_text_and_image_onboarding.dart';
import 'package:doctor_app_flutter/features/onbording_screen/widget/custom_text_button_onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextAndImageOnboarding(),
          
              SizedBox(height: 30.w),
              CustomImageDoctorAndText(),
              SizedBox(height: 16.w),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Text(
                            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                            style: textStyle14,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.w),
          
                    CustomTextButtonOnBoarding(),
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
