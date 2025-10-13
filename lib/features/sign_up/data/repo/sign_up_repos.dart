import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';
import 'package:doctor_app_flutter/core/networking/api_result.dart';
import 'package:doctor_app_flutter/core/networking/api_service.dart';
import '../model/sign_up_request.dart';

class SignUpRepos {
  final ApiService _apiService;

  SignUpRepos(this._apiService);
  Future<ApiResult> signUp(SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
