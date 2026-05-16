import 'package:bookly/Features/app/presentation/pages/my_app.dart';
import 'package:bookly/Features/home/presentation/pages/home_page.dart';
import 'package:bookly/Features/home_details/presentation/pages/home_details_page.dart';
import 'package:bookly/Features/splash/presentation/pages/splash_page.dart';
import 'package:bookly/core/utils/routes/routes_name.dart';
import 'package:go_router/go_router.dart';

import '../../../Features/search/presentation/pages/search_page.dart';
class AppRoutes {

 

// GoRouter configuration
static final GoRouter router = GoRouter(
  routes: [
   
    GoRoute(
      path: RoutesName.kSplashView,
      builder: (context, state) => SplashPage(),
    ),
      GoRoute(
      path: RoutesName.kBookHomeView,
      builder: (context, state) => HomePage(),
    ),
      GoRoute(
      path: RoutesName.kBookDetailsView,
      builder: (context, state) => HomeDetailsPage(),
    ),
    GoRoute(
      path: RoutesName.kSearchpagesView,
      builder: (context, state) => Searchpages(),
    ),
  ],
);
}