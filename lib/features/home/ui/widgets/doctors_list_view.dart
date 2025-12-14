import 'package:doctor_app_flutter/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    width: 110.w,
                    height: 110.h,
                    "assets/images/8c50e7b2c7369bd3e942c95803afc796ca283e34.png",

                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16.w,),
               Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Dr. Randy Wigham",style: textStyle16DarkBlueBold,),
                     SizedBox(width: 8,),
                     Text("General | RSUD Gatot Subroto",style: textStyle12grayMiddle,),

                   ],
                 ),
               )
              ],
            ),
          );
        },
      ),
    );
  }
}
