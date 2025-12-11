import 'package:flutter/material.dart';
import 'package:movies_app/splash/splash_screen.dart';

class RouteManager {
  static const String splash = '/splash';

  static Map<String, WidgetBuilder> routes = {splash: (_) => SplashScreen()};
}
