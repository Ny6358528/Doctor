import 'package:doctor_app/core/di/dependency%20_injection.dart';
import 'package:doctor_app/core/routing/routing_name.dart';
import 'package:doctor_app/featured/home/logic/cubit/home_cubit.dart';
import 'package:doctor_app/featured/home/ui/screens/home_screen.dart';
import 'package:doctor_app/featured/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/featured/login/ui/screen/login_screen.dart';
import 'package:doctor_app/featured/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doctor_app/featured/sign_up/ui/screens/sign_up_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../featured/onboarding/screens/onboarding_screen.dart';

class RoutingApp {
  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RoutingName.onBoardingScreen,
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        path: RoutingName.kLoginScreen,
        builder: (context, state) => BlocProvider(
          create: (context) =>  getIt<LoginCubit>(),
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path: RoutingName.kSignUpScreen,
        builder: (context, state) => BlocProvider(
          create: (context) =>    getIt<SignUpCubit>(),
          child: SignUpScreen(),
        ),
      ),
        GoRoute(
        path: RoutingName.kHomeScreen,
        builder: (context, state)=> BlocProvider(
          create: (context) =>   HomeCubit(getIt())..getSpecializations(),
          child: HomeScreen(),
        ) ,
      ),
    ],
  );
}
