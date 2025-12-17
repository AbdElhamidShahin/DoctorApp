import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/networking/api_constants.dart';
import '../model/home_model.dart';
import 'home_api_constants.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl) // baseUrl
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) =
      _HomeApiService; //generation file HomeApiService.g
  @GET(HomeApiConstants.specializationEP) // end point
  Future<SpecializationsResponse> getSpecialization(); // model
}
