import 'package:dalel_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:dalel_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterGenerator {
  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    errorBuilder: (context, state) => const Text('404'),
    routes: [
      GoRoute(
        name: AppRoutes.splash,
        path: AppRoutes.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        name: AppRoutes.onBoarding,
        path: AppRoutes.onBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}
