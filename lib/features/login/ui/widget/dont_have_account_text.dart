import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don\'t have an account ? ",
            style: textStyle13.copyWith(
              color: AppColors.darkBlue,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: " Sign Up",
            style: textStyle13.copyWith(
              color: AppColors.blueMain,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
