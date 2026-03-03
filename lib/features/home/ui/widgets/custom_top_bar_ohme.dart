import 'package:doctor_app_flutter/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class CustomTopBarHome extends StatelessWidget {
  const CustomTopBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Omar!", style: textStyle18BoldBlack),
            SizedBox(height: 2),
            Text("How Are you Today?", style: textStyle11RegularGray),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: AppColors.whiteGrey,
          child: SvgPicture.asset('assets/svgs/Alert.svg'),
        ),
      ],
    );
  }
}
