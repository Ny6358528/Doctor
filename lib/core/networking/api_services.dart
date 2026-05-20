import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants.dart';
import 'package:doctor_app/featured/login/data/model/login_request_model.dart';
import 'package:doctor_app/featured/login/data/model/login_respone_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

   @POST(ApiConstants.apiLogin)
  Future<LoginResponeModel> createLogin(@Body() LoginRequestModel loginRequestModel);
}
