import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:movies_app/core/asset_manager/asset_manager.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';
import 'package:movies_app/core/route_manager/route_manager.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final introKey = GlobalKey<IntroductionScreenState>();
  int currentPage = 0;

  Widget _buildImage(String assetName) {
    return Image.asset(
      assetName,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed, {bool isPrimary = false}) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: isPrimary ? ColorManager.gold : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: isPrimary ? null : Border.all(color: ColorManager.gold, width: 2),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: isPrimary ? ColorManager.black2 : ColorManager.gold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 1. Adjust Page Decoration to push text up so buttons don't cover it
    TextStyle bodyStyle = TextStyle(
      fontSize: 20.0,
      color: ColorManager.white,
      fontWeight: FontWeight.w400,
    );

    var pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 36.0,
        fontWeight: FontWeight.w500,
        color: ColorManager.white,
      ),
      bodyTextStyle: bodyStyle,
      // Increased bottom padding to make room for the buttons
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 150.0),
      pageColor: Colors.transparent,
      imagePadding: EdgeInsets.zero,
      imageFlex: 3,
      bodyFlex: 2, // Give more space to the text area
      contentMargin: const EdgeInsets.all(16),
      fullScreen: true,
    );

    return Scaffold(
      backgroundColor: ColorManager.black,
      body: Stack(
        children: [
          IntroductionScreen(
            key: introKey,
            globalBackgroundColor: Colors.transparent,
            pages: [
              PageViewModel(
                title: "Discover Movies",
                body: "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
                image: _buildImage(ImageAsset.Poster2),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Explore All Genres",
                body: "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
                image: _buildImage(ImageAsset.Poster3),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Create Watchlists",
                body: "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
                image: _buildImage(ImageAsset.Poster4),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Rate, Review, and Learn",
                body: "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
                image: _buildImage(ImageAsset.Poster5),
                decoration: pageDecoration,
              ),
              PageViewModel(
                title: "Start Watching Now",
                body: "Ready to dive into the world of movies? Let's get started!",
                image: _buildImage(ImageAsset.Poster6),
                decoration: pageDecoration,
              ),
            ],
            onDone: () {}, // Handled manually by buttons
            showSkipButton: false,
            showBackButton: false,
            showNextButton: false,
            showDoneButton: false,
            dotsDecorator: const DotsDecorator(
              size: Size(0, 0),
              activeSize: Size(0, 0),
            ),
            onChange: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),

          // Custom buttons at the bottom
          Positioned(
            bottom: 30, // Pinned to bottom
            left: 16,
            right: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // CASE 1: First Screen (Index 0) -> Only "Next"
                if (currentPage == 0) ...[
                  _buildButton(
                    "Next",
                        () {
                      introKey.currentState?.next();
                    },
                    isPrimary: true,
                  ),
                ],

                // CASE 2: Middle Screens (Index 1, 2, 3) -> "Next" and "Back"
                if (currentPage > 0 && currentPage < 4) ...[
                  _buildButton(
                    "Next",
                        () {
                      introKey.currentState?.next();
                    },
                    isPrimary: true,
                  ),
                  const SizedBox(height: 12),
                  _buildButton(
                    "Back",
                        () {
                      introKey.currentState?.previous();
                    },
                    isPrimary: false,
                  ),
                ],

                // CASE 3: Last Screen (Index 4) -> "Finish" and "Back"
                if (currentPage == 4) ...[
                  _buildButton(
                    "Finish",
                        () {
                      Navigator.pushNamed(context, RouteManager.register);
                    },
                    isPrimary: true,
                  ),
                  const SizedBox(height: 12),
                  _buildButton(
                    "Back",
                        () {
                      introKey.currentState?.previous();
                    },
                    isPrimary: false,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}