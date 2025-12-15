import 'package:flutter/material.dart';
import 'package:movies_app/features/Search/search_view.dart';
import 'package:movies_app/features/home/presentation/home.dart';
import 'package:movies_app/features/splash/splash_screen.dart';

abstract class RouteManager {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String search = '/search';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => SplashScreen(),
    home: (_) => Home(),
    search: (_) => SearchView(),
  };
}
