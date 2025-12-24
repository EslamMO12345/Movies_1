import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
      width: double.infinity.w,
      height: double.infinity.h,
      fit: BoxFit.cover,
    );
  }

  Widget _buildButton(String text, VoidCallback onPressed, {bool isPrimary = false}) {
    return Container(
      width: double.infinity.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: isPrimary ? ColorManager.gold : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        border: isPrimary ? null : Border.all(color: ColorManager.gold, width: 2.w),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: isPrimary ? ColorManager.black2 : ColorManager.gold,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle bodyStyle = GoogleFonts.inter(
      fontSize: 20.sp,
      color: ColorManager.white,
      fontWeight: FontWeight.w400
    );

    var pageDecoration = PageDecoration(
      titleTextStyle:
      GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 36.sp,
        color: ColorManager.white
      ),
      bodyTextStyle: bodyStyle,
      bodyPadding:  REdgeInsets.fromLTRB(16.0, 0.0, 16.0, 150.0),
      pageColor: Colors.transparent,
      imagePadding: EdgeInsets.zero,
      imageFlex: 3,
      bodyFlex: 2,
      contentMargin:  REdgeInsets.all(16),
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
            onDone: () {},
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
          Positioned(
            bottom: 30.sp,
            left: 16.sp,
            right: 16.sp,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (currentPage == 0) ...[
                  _buildButton(
                    "Next",
                        () {
                      introKey.currentState?.next();
                    },
                    isPrimary: true,
                  ),
                ],
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