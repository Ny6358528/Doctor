import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/core/networking/error_handler.dart';
import 'package:doctor_app/featured/login/data/model/login_request_model.dart';
import 'package:doctor_app/featured/login/data/model/login_respone_model.dart';

class LoginRepos {
  final RestClient restClient;

  LoginRepos(this.restClient);

  Future<ApiResult<LoginResponeModel>> createLogin(
    LoginRequestModel loginRequestModel,
  ) async {
    try {
      final response = await restClient.createLogin(loginRequestModel);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}