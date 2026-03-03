import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';
import 'package:doctor_app_flutter/core/networking/api_service.dart';
import 'package:doctor_app_flutter/features/login/data/repos/repos.dart';
import 'package:doctor_app_flutter/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/shared_pref_helper.dart';
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
      success: (loginResponse) async {
        // 1. هنا نحفظ التوكن بعد ما اتأكدنا إن الـ Login نجح والبيانات وصلت
        // بنجيب التوكن من الـ loginResponse اللي لسه واصل حالاً
        await SharedPrefHelper.setData(
          'userToken',
          loginResponse.userData?.token,
        );
        print("TOKEN SAVED SUCCESSFULLY: ${loginResponse.userData?.token}");
        // 2. بعدها نبعث حالة النجاح
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(
          LoginState.error(error: error.apiErrorModel.message ?? "حدث خطأ ما"),
        );
      },
    );
  }
}
