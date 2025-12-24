import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:movies_app/core/asset_manager/asset_manager.dart';
import 'package:movies_app/core/route_manager/route_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.pushNamed(context, RouteManager.onboardingPoster1
      ),
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Image.asset(ImageAsset.Logo, scale: 6,)],
      ),
    );
  }
}
