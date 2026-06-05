import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_factory.dart';
import 'package:doctor_app/core/networking/api_services.dart';
import 'package:doctor_app/featured/home/data/apis/api_home_services.dart';
import 'package:doctor_app/featured/home/data/repo/home_repo.dart';
import 'package:doctor_app/featured/login/data/repos/login_repos.dart';
import 'package:doctor_app/featured/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/featured/sign_up/data/repo/signup_repos.dart';
import 'package:doctor_app/featured/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';


   final getIt = GetIt.instance;

   void init() {
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
     // SignUp
    getIt.registerLazySingleton<SignupRepos>(
      () => SignupRepos(getIt()),
    );

    getIt.registerFactory<SignUpCubit>(
      () => SignUpCubit(getIt()),
    );
    //home
      getIt.registerLazySingleton<ApiHomeServices>(
      () => ApiHomeServices(dio),
    );
      getIt.registerLazySingleton<HomeRepos>(
      () => HomeRepos(getIt()),
    );

    // getIt.registerFactory<HomeCubit>(
    //   () => HomeCubit(getIt()),
    // );
  }
