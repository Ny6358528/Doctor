import 'package:doctor_app/core/routing/routing_name.dart';
import 'package:doctor_app/featured/login/screen/login_screen.dart';
import 'package:go_router/go_router.dart';

import '../../featured/onboarding/screens/onboarding_screen.dart';

class RoutingApp {

// GoRouter configuration
 static final  router = GoRouter(
    routes: [
      GoRoute(
        path: RoutingName.onBoardingScreen,
        builder: (context, state) => OnboardingScreen(),
      ),
       GoRoute(
        path: RoutingName.kLoginScreen,
        builder: (context, state) => LoginScreen(),
      ),
    ],
  );
}