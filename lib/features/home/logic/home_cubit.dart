import 'package:doctor_app_flutter/features/home/data/repos/home_repos.dart';
import 'package:doctor_app_flutter/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/shared_pref_helper.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepos _homeRepos;

  HomeCubit(this._homeRepos) : super(HomeInitialState());

  void getSpecialization() async {
    print(
      "Checking Token before request: ${await SharedPrefHelper.getString('userToken')}",
    );
    emit(HomeLoadingState());
    print(
      "Checking Token before request: ${await SharedPrefHelper.getString('userToken')}",
    );
    final response = await _homeRepos.getSpecialization();
    print(
      "Checking Token before request: ${await SharedPrefHelper.getString('userToken')}",
    );
    response.when(
      success: (specializationsResponse,) {
        emit(HomeSuccessState(specializationsResponse,));
      },

      failure: (errorHandelar) {
        emit(HomeErrorState(errorHandelar));
      },
    );
  }
}
