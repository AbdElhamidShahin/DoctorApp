import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';
import 'package:doctor_app_flutter/core/networking/api_service.dart';
import 'package:doctor_app_flutter/features/login/data/repos/repos.dart';
import 'package:doctor_app_flutter/features/login/logic/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/login_request_body.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepos _loginRepos;

  LoginCubit(this._loginRepos) : super(LoginState.initial());

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(LoginState.Loading());
    final response = await _loginRepos.login(loginRequestBody);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message));
      },
    );
  }
}
