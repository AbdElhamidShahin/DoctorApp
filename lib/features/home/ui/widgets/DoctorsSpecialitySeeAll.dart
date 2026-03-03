import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Doctor Speciality", style: textStyle18DarkBlueSemiBold),

        Text("See All", style: textStyle12BlueRegular),
      ],
    );
  }
}
