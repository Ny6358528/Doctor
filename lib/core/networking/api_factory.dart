import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiFactory {
  ApiFactory._();

  static Dio? _dio;

  static Dio getDio() {
    if (_dio == null) {
      _dio = Dio();
      _initializeDio();
    }

    return _dio!;
  }

  static void _initializeDio() {
    _dio!.options = BaseOptions(
      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 50),
      headers: {
        'Accept': 'application/json',
        'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzgwNjEzNjU5LCJleHAiOjE3ODA3MDAwNTksIm5iZiI6MTc4MDYxMzY1OSwianRpIjoibzNiZ3laR0trTFhuRWJndCIsInN1YiI6IjcwNTciLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.tls-osVg69Vua2mt1HD9wptjMjQwZXsi6H7XNFxWj78'

      },
    );

    _addDioInterceptor();
  }

  static void _addDioInterceptor() {
    _dio!.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
      ),
    );
  }
}