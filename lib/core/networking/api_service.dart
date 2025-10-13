import 'package:dio/dio.dart';
import 'package:doctor_app_flutter/features/sign_up/data/model/sign_up_request.dart';
import 'package:doctor_app_flutter/features/sign_up/data/model/sign_up_response.dart';
import 'package:doctor_app_flutter/features/sign_up/data/repo/sign_up_repos.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/model/login_request_body.dart';
import '../../features/login/data/model/login_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl) //baseUrl
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  ///login
  @POST(ApiConstants.login) //endPoint
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  ///signUp

  @POST(ApiConstants.signUp) //endPoint
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody signUpRequestBody);
}

// خد الكائن الي بعد ال@Body() وحوله الي jsonوابعته في جسم الطلب الي هما email & passWord
