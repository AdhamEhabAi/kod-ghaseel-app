import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kod_ghaseel_app/Utilites/app_assets/assets.dart';
import 'package:kod_ghaseel_app/core/router/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, _excuteNavigation);
  }

  void _excuteNavigation() {
    final router = GoRouter.of(context);
    Future.delayed(
      Duration(seconds: 3),
      () => router.go(AppRouter.onboardingScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Hero(
        tag: 'splash',
        child: Center(child: Image.asset(Assets.splashImage)),
      ),
    );
  }
}
