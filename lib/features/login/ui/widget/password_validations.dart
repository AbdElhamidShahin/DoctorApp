import 'package:doctor_app_flutter/core/theming/colors.dart';
import 'package:doctor_app_flutter/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCaracters;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCaracters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase letter", hasLowerCase),
        SizedBox(height: 2),
        buildValidationRow("At least 1 uppercase letter", hasUpperCase),
        SizedBox(height: 2),
        buildValidationRow(
          "At least 1 special character ",
          hasSpecialCaracters,
        ),
        SizedBox(height: 2),
        buildValidationRow("At least 1 number", hasNumber),
        SizedBox(height: 2),
        buildValidationRow("At lest 8 characters letter", hasMinLength),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidated) {
  return Row(
    children: [
      CircleAvatar(radius: 2.5, backgroundColor: AppColors.gray),
      SizedBox(width: 6),
      Text(
        text,
        style: textStyle13.copyWith(
          color: hasValidated ? AppColors.gray : AppColors.darkBlue,
          decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
        ),
      ),
    ],
  );
}
