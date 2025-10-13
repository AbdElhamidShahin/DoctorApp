import 'package:doctor_app_flutter/core/theming/colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart' show textStyle13;

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(text: "By logging, you agree to our", style: textStyle13),
          TextSpan(
            text: " Terms & Conditions\n",
            style: textStyle13.copyWith(
              color: AppColors.darkBlue,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(text: " and", style: textStyle13.copyWith(height: 1.5)),
          TextSpan(
            text: " PrivacyPolicy",
            style: textStyle13.copyWith(
              color: AppColors.darkBlue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
