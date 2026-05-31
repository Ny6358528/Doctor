import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_error_model.dart';

class ErrorHandler implements Exception {
  late final ApiErrorModel apiErrorModel;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      apiErrorModel = _handleDioError(error);
    } else {
      apiErrorModel = ApiErrorModel(
        message: 'Unexpected Error Occurred',
      );
    }
  }

  /// 🔥 Getter مريح بدل ما تكتبي apiErrorModel.message كل مرة
  String get message => apiErrorModel.message ?? 'Unknown Error';

  ApiErrorModel _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiErrorModel(message: 'Connection Timeout');

      case DioExceptionType.sendTimeout:
        return ApiErrorModel(message: 'Send Timeout');

      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(message: 'Receive Timeout');

      case DioExceptionType.badCertificate:
        return ApiErrorModel(message: 'Bad Certificate');

      case DioExceptionType.badResponse:
        return _handleError(
          error.response?.statusCode,
          error.response?.data,
        );

      case DioExceptionType.cancel:
        return ApiErrorModel(message: 'Request Cancelled');

      case DioExceptionType.connectionError:
        return ApiErrorModel(message: 'No Internet Connection');

      case DioExceptionType.unknown:
        return ApiErrorModel(message: 'Unknown Error');
    }
  }

  ApiErrorModel _handleError(int? statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
        return ApiErrorModel.fromJson(response);

      case 401:
        return ApiErrorModel(message: 'Unauthorized');

      case 403:
        return ApiErrorModel(message: 'Forbidden');

      case 404:
        return ApiErrorModel(message: 'Not Found');

      case 500:
        return ApiErrorModel(message: 'Internal Server Error');

      default:
        return ApiErrorModel(message: 'Something Went Wrong');
    }
  }
}