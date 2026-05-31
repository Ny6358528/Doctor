import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/core/networking/error_handler.dart';
import 'package:doctor_app/featured/sign_up/data/model/signup_request_model.dart';
import 'package:doctor_app/featured/sign_up/data/model/signup_response_model.dart';

class SignupRepos {
  final RestClient restClient;

  SignupRepos(this.restClient);

  Future<ApiResult<SignupResponseModel>> createSignup(
    SignupRequestModel signupRequestModel,
  ) async {
    try {
      final response =
          await restClient.createSignup(signupRequestModel);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}