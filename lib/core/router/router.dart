import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kod_ghaseel_app/features/onboarding/onboarding_screen.dart';
import 'package:kod_ghaseel_app/features/splash/splash_screen.dart';

class AppRouter{
  static const String splashScreen = '/';
  static const String onboardingScreen = '/OnboardingScreen';


  static var globalNavKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: globalNavKey,
    //initialLocation: signupScreen,
    redirect: (context, state) {
      final uri = state.uri.toString();
      debugPrint("Intercepted deep link: $uri");
    },
    routes: <RouteBase>[
      GoRoute(
          path: splashScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const SplashScreen();
          }),

      GoRoute(
          path: onboardingScreen,
          builder: (BuildContext context, GoRouterState state) {
            return const OnboardingScreen();
          }),
    ],
  );

}