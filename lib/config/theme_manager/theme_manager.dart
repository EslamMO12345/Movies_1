import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';

abstract class ThemeManager {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorManager.black,
    appBarTheme:AppBarTheme(color: ColorManager.black,
    centerTitle: true),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style:ElevatedButton.styleFrom( 
          padding: EdgeInsets.all(10),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
            foregroundColor: ColorManager.black2 ,
            backgroundColor: ColorManager.gold,
        )
      ),

    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: ColorManager.white, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: ColorManager.white, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: ColorManager.red, width: 1.w),
      ),
    )

  );


}
