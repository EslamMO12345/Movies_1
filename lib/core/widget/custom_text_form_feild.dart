import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';

class CustomTextFormFeild extends StatelessWidget {
  CustomTextFormFeild({super.key,  this.hintText,  this.prefixIcon,  this.SuffixIcon,  this.labelText,  this.maxlines, this.textInputType = TextInputType.text});

  final String? hintText;
  final IconData? prefixIcon;
  final IconData? SuffixIcon;
 TextInputType textInputType;
 final String? labelText;
 final int? maxlines;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      keyboardType: textInputType,

      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: GoogleFonts.inter(color: ColorManager.white, fontSize: 16.sp, fontWeight: FontWeight.w400),
        labelText: labelText,
        prefixIcon: prefixIcon !=null? Icon(prefixIcon, color: ColorManager.white,) : null,
        suffixIcon: SuffixIcon != null? Icon(SuffixIcon, color: ColorManager.white,) : null,
      ),
      style: GoogleFonts.inter(color: Colors.transparent),
    );
  }
}
