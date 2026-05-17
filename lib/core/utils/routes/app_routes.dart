
import 'package:doctor_app/core/utils/routes/routes_name.dart';
import 'package:doctor_app/featured/onboarding/screens/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {

 

// GoRouter configuration
static final GoRouter router = GoRouter(
  routes: [
   
    GoRoute(
      path: RoutesName.kOnBoardingScreen,
      builder: (context, state) => OnboardingScreen(),
    ),
     
  ],
);
}