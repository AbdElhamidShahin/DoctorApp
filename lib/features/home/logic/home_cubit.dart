import 'package:doctor_app_flutter/features/home/data/repos/home_repos.dart';
import 'package:doctor_app_flutter/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepos _homeRepos;

  HomeCubit(this._homeRepos) : super(HomeInitialState());

  void getSpecialization() async {
    emit(HomeLoadingState());
    final response = await _homeRepos.getSpecialization();
    response.when(
      success: (specializationsResponse) {
        emit(HomeSuccessState(specializationsResponse));
      },
      failure: (errorHandelar) {
        emit(HomeErrorState(errorHandelar));
      },
    );
  }
}
