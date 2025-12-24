import 'package:flutter/material.dart';
import 'package:movies_app/core/asset_manager/asset_manager.dart';
import 'package:movies_app/core/route_manager/route_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 1),
      () => Navigator.pushNamed(context, RouteManager.onboardingPoster1
      ),
    );
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Image.asset(ImageAsset.Logo, scale: 6,)],
      ),
    );
  }
}
