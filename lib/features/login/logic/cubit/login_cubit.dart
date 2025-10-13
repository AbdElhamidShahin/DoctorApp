import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';
import 'package:doctor_app_flutter/core/networking/api_service.dart';
import 'package:doctor_app_flutter/features/login/data/repos/repos.dart';
import 'package:doctor_app_flutter/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model/login_request_body.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepos _loginRepos;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginCubit(this._loginRepos) : super(LoginState.initial());

  void emitLoginState() async {
    emit(LoginState.Loading());
    final response = await _loginRepos.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
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
