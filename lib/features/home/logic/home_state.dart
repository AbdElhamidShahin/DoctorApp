import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';

import '../data/model/home_model.dart';

class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final SpecializationsResponse specializationResponse;
  // احذف متغير doctors المنفصل إذا كان الأطباء يأتون داخل التخصصات
  HomeSuccessState(this.specializationResponse);
}
class HomeErrorState extends HomeState {
  final ErrorHandler errorHandler;

  HomeErrorState(this.errorHandler);
}
