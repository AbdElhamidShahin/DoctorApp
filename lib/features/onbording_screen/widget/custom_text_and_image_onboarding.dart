import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/theming/styles.dart';

class CustomTextAndImageOnboarding extends StatelessWidget {
  const CustomTextAndImageOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/logo_onbording.svg"),
        SizedBox(width: 10.w),
        Text("DocDoc", style: textStyle24),
      ],
    );
  }
}
