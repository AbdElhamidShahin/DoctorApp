import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/model/login_request_body.dart';
import '../../features/login/data/model/login_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl) //baseUrl
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login) //endPoint
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}

// خد الكائن الي بعد ال@Body() وحوله الي jsonوابعته في جسم الطلب الي هما email & passWord
