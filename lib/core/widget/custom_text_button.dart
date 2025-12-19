import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({super.key, required this.onPressed, required this.text});

  VoidCallback onPressed;
  String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.inter(
          color: ColorManager.gold,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
