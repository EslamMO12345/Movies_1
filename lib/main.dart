import 'package:flutter/material.dart';
import 'package:movies_app/config/theme_manager/theme_manager.dart';
import 'package:movies_app/core/route_manager/route_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(430, 932),
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: RouteManager.routes,
        initialRoute: RouteManager.splash,
        themeMode: ThemeMode.light,
        theme: ThemeManager.light,
      ),
    );
  }
}
