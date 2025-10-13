import 'package:doctor_app_flutter/features/sign_up/data/model/sign_up_request.dart';
import 'package:doctor_app_flutter/features/sign_up/logic/cubits/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../data/repo/sign_up_repos.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepos _signUpRepos;

  SignUpCubit(this._signUpRepos) : super(SignUpState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(SignUpState.loading());
    final response = await _signUpRepos.signUp(
      SignUpRequestBody(
        phone: phoneController.text,
        name: nameController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) {
        emit(SignUpState.success(loginResponse));
      },
      failure: (error) {
        return ApiResult.failure(ErrorHandler.handle(error));
      },
    );
  }
}
