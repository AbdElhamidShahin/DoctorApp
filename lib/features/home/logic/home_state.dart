import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';

import '../data/model/home_model.dart';

class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  SpecializationItem specializationItem;

  HomeSuccessState(this.specializationItem);
}

class HomeErrorState extends HomeState {
  final ErrorHandler errorHandler;

  HomeErrorState(this.errorHandler);
}
