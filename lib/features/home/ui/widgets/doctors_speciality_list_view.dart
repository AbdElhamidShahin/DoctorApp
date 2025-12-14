import 'package:doctor_app_flutter/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 24.0,
                  backgroundColor: AppColors.bluelight,
                  child: Image.asset(
                    height: 24,width: 24,
                    'assets/images/a0fea4bcf76e008e0de983728f913f0d8b4d837c.png',
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "General",
                  style: textStyle12BlueRegular.copyWith(
                    color: AppColors.darkBlue,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
