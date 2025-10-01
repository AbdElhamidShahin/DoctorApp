import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/routing/routers.dart';
import '../../../core/theming/styles.dart';

class CustomTextButtonOnBoarding extends StatelessWidget {
  const CustomTextButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.go(routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xFF247CFF)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      child: Text("Get Start", style: textStyle16),
    );
  }
}
