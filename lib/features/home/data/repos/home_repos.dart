import 'package:doctor_app_flutter/core/networking/api_error_handler.dart';
import 'package:doctor_app_flutter/core/networking/api_result.dart';
import 'package:doctor_app_flutter/core/networking/api_service.dart';
import 'package:doctor_app_flutter/features/login/data/model/login_request_body.dart';
import 'package:doctor_app_flutter/features/login/data/model/login_response.dart';

import '../apis/home_api_service.dart';

class HomeRepos {
  final HomeApiService _homeApiService;

  HomeRepos(this._homeApiService);
  Future<ApiResult> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
