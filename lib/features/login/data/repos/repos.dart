import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';
import 'package:doctor_app_flutter/core/networking/api_result.dart';
import 'package:doctor_app_flutter/core/networking/api_service.dart';
import 'package:doctor_app_flutter/features/login/data/model/login_request_body.dart';
import 'package:doctor_app_flutter/features/login/data/model/login_response.dart';

class LoginRepos {
  final ApiService _apiService;
//
  LoginRepos(this._apiService);
  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
