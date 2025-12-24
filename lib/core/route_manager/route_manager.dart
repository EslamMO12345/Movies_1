import 'package:flutter/material.dart';
import 'package:movies_app/features/auth/forget_password/forget_password.dart';
import 'package:movies_app/features/auth/login/login.dart';
import 'package:movies_app/features/auth/register/register.dart';
import 'package:movies_app/features/onboarding/onboarding.dart';
import 'package:movies_app/features/onboarding/onboarding_poster1.dart';
import 'package:movies_app/splash/splash_screen.dart';

abstract class RouteManager {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String register = '/register';
  static const String forgetPassword = '/forgetPassword';
  static const String login = '/login';
  static const String onboarding = '/onboarding';
  static const String onboardingPoster1 = '/onboardingPoster1';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => SplashScreen(),
    home: (_) => SplashScreen(),
    register:(_)=>Register(),
    forgetPassword:(_)=>ForgetPassword(),
    login:(_)=>Login(),
    onboarding : (_)=>OnBoarding(),
    onboardingPoster1 : (_)=>OnboardingPoster1(),
  };
}
