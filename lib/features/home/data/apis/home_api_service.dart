import 'package:dio/dio.dart';
import 'package:medilink/core/networking/api_constants.dart';
import 'package:retrofit/http.dart';

import '../models/specialization_response_model.dart';
import 'home_api_constants.dart';
part 'home_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
  

}


