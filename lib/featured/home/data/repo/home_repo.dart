import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/error_handler.dart';
import 'package:doctor_app/featured/home/data/apis/api_home_services.dart';
import 'package:doctor_app/featured/home/data/model/home_respone_model.dart';

class HomeRepos {
  final ApiHomeServices apiHomeScreen;

  HomeRepos(this.apiHomeScreen);

  Future<ApiResult<ResponseModel>> getSpecializations(

  ) async {
    try {
      final response =await apiHomeScreen.getSpecializations();
      

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}