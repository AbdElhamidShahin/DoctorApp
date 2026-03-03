import 'package:doctor_app_flutter/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/home_model.dart';

class DoctorsListView extends StatelessWidget {
   DoctorsListView({super.key, this.doctorsList});
  final List<Doctors>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: doctorsList?.length ?? 0,
      itemBuilder: (context, index) {
        final doctor = doctorsList![index];
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
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(doctor.name ?? 'Doctor Name', style: textStyle16DarkBlueBold),                      SizedBox(width: 8),
                    Text(
                      "${doctor.degree} | ${doctor.phone}",
                      style: textStyle12grayMiddle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
