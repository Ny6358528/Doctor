import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_factory.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/featured/login/data/repos/login_repos.dart';
import 'package:doctor_app/featured/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

class DependencyInjection {
  static final getIt = GetIt.instance;

  static void init() {
    final Dio dio = ApiFactory.getDio();

    getIt.registerLazySingleton<RestClient>(
      () => RestClient(dio),
    );

    // Login
    getIt.registerLazySingleton<LoginRepos>(
      () => LoginRepos(getIt()),
    );

    getIt.registerFactory<LoginCubit>(
      () => LoginCubit(getIt()),
    );
  }
}