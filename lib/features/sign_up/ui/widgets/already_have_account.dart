import 'package:doctor_app_flutter/core/theming/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/routing/routers.dart';
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
            text: 'Already have an account?',
            style: textStyle13.copyWith(color: AppColors.darkBlue),
          ),
          TextSpan(
            text: ' Sign Up',
            style: textStyle13.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.blueMain,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
