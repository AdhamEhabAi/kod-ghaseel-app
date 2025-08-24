import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter{
  static const String splashScreen = '/';
  static const String onBoarding = '/onBoarding';


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
      // GoRoute(
      //     path: deepLinkRedirect,
      //     builder: (BuildContext context, GoRouterState state) {
      //       return const Splash();
      //     }),
    ],
  );

}