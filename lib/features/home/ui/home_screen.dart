import 'package:doctor_app_flutter/features/home/logic/home_cubit.dart';
import 'package:doctor_app_flutter/features/home/logic/home_state.dart';
import 'package:doctor_app_flutter/features/home/ui/widgets/DoctorsSpecialitySeeAll.dart';
import 'package:doctor_app_flutter/features/home/ui/widgets/custom_top_bar_ohme.dart';
import 'package:doctor_app_flutter/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doctor_app_flutter/features/home/ui/widgets/doctors_list_view.dart';
import 'package:doctor_app_flutter/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD

import '../data/model/home_model.dart';
=======
>>>>>>> 3337d2f9be5d79ab4d397d326fd5b22343bc1fe9

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              CustomTopBarHome(),
              DoctorsBlueContainer(),
              SizedBox(height: 24),
              DoctorsSpecialitySeeAll(),
              SizedBox(height: 18),

              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is HomeLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is HomeSuccessState) {
<<<<<<< HEAD
                    final specializationList =
                        state.specializationResponse.data ?? [];

                    final List<Doctors>? doctorsList =
                        specializationList.isNotEmpty
                        ? specializationList[0].doctors
                        : [];
=======
                    final specializationList = state.specializationResponse.data ?? [];
>>>>>>> 3337d2f9be5d79ab4d397d326fd5b22343bc1fe9
                    return Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            DoctorsSpecialityListView(
                              specializationList: specializationList,
                            ),
                            SizedBox(height: 24.h),
<<<<<<< HEAD

                            DoctorsListView(doctorsList: doctorsList),
=======
                            // هنا ستضع DoctorsListView() لاحقاً
>>>>>>> 3337d2f9be5d79ab4d397d326fd5b22343bc1fe9
                          ],
                        ),
                      ),
                    );
                  } else if (state is HomeErrorState) {
                    return const Center(child: Text("An error occurred"));
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
