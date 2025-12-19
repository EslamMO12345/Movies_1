import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';

class CustomElvatedButton extends StatelessWidget {
  CustomElvatedButton({
    super.key,
    required this.onpressed,
    required this.title,
  });

  VoidCallback onpressed;

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpressed,
        child:
        Text(
          title,
          style: GoogleFonts.inter(
            backgroundColor: ColorManager.gold,
            color: ColorManager.black2,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
        ),

      ),
    );
  }
}

/*

 */
