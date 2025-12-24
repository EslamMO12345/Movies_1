import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/asset_manager/asset_manager.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';
import 'package:movies_app/core/route_manager/route_manager.dart';
import 'package:movies_app/core/widget/custom_elvated_button.dart';

class OnboardingPoster1 extends StatelessWidget {
  const OnboardingPoster1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: ColorManager.black,
              child: Image.asset(
                ImageAsset.Poster_1,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              // Added background color for visibility
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: Offset(0, -2), // Shadow at the top
                ),
              ],
            ),
            child: Padding(
              padding:  REdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Find Your Next \n Favorite Movie Here',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.white,
                      height: 1.5.h
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    'Get access to a huge library of movies to suit all tastes. You will surely like it.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 20.sp,
                      color: ColorManager.black2,
                      height: 1.5.h
                    ),
                  ),
                  SizedBox(height: 24.h),
                  CustomElvatedButton(
                    onpressed: () {
                      Navigator.pushNamed(context, RouteManager.onboarding);
                    },
                    title: 'Explore Now',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
