import 'package:doctor_app_flutter/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/login/ui/loginScreen.dart';
import '../../features/onbording_screen/onBoardingScreen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: routes.onBoardingScreen,
    routes: [
      GoRoute(
        path: routes.onBoardingScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const OnBoardingScreen();
        },
      ),
      GoRoute(
        path: routes.loginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return LoginScreen();
        },
      ),
    ],
  );
}
