import 'package:doctor_app_flutter/core/di/dependency_injection.dart';
import 'package:doctor_app_flutter/core/routing/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/cubit/cubit.dart';
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
          return BlocProvider(
            create: (BuildContext context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          );
        },
      ),
      GoRoute(
        path: routes.HomeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return HomeScreen();
        },
      ),
    ],
  );
}
