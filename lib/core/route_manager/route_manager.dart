import 'package:flutter/material.dart';
import 'package:movies_app/splash/splash_screen.dart';

abstract class RouteManager {
  static const String splash = '/splash';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => SplashScreen(),
    home: (_) => SplashScreen(),
  };
}
