import 'package:doctor_app_flutter/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../data/model/home_model.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationItem> specializationList;

  const DoctorsSpecialityListView({
    super.key,
    required this.specializationList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
<<<<<<< HEAD
=======
      // زدنا الارتفاع من 100 إلى 120 ليعطي مساحة كافية للنص والصورة
>>>>>>> 3337d2f9be5d79ab4d397d326fd5b22343bc1fe9
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationList.length,
        itemBuilder: (context, index) {
          final item = specializationList[index];
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
<<<<<<< HEAD
=======
              // تم إضافة هذا السطر لضمان عدم تمدد العمود أكثر من اللازم
>>>>>>> 3337d2f9be5d79ab4d397d326fd5b22343bc1fe9
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundColor: AppColors.bluelight,
                  child: Image.asset(
                    'assets/images/a0fea4bcf76e008e0de983728f913f0d8b4d837c.png',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
<<<<<<< HEAD
                SizedBox(height: 10.h),
                Text(
                  item.name ?? 'Specialization',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
=======
                SizedBox(height: 10.h), // مسافة بسيطة بين الصورة والنص
                Text(
                  item.name ?? 'Specialization',
                  textAlign: TextAlign.center,
                  maxLines: 1, // سطر واحد فقط لمنع الـ Overflow
                  overflow: TextOverflow
                      .ellipsis, // وضع نقاط إذا كان الاسم طويلاً جداً
>>>>>>> 3337d2f9be5d79ab4d397d326fd5b22343bc1fe9
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
