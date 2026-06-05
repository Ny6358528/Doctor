import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants.dart';
import 'package:doctor_app/featured/home/data/apis/api_home_screen.dart';
import 'package:doctor_app/featured/home/data/model/home_respone_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_home_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiHomeServices {
  factory ApiHomeServices(Dio dio, {String? baseUrl}) = _ApiHomeServices;

  
 @GET(ApiHomeScreen.apiSpecializationHome)
  Future<ResponseModel> getSpecializations();}