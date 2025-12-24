import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/asset_manager/asset_manager.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';
import 'package:movies_app/core/route_manager/route_manager.dart';
import 'package:movies_app/core/widget/custom_elvated_button.dart';
import 'package:movies_app/core/widget/custom_text_button.dart';
import 'package:movies_app/core/widget/custom_text_form_feild.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  REdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(ImageAsset.Logo, scale: 10),
            SizedBox(height: 10.h),
            CustomTextFormFeild(hintText: 'Email', prefixIcon: Icons.email),
            SizedBox(height: 8.h),
            CustomTextFormFeild(
              hintText: 'Password',
              prefixIcon: Icons.lock,
              SuffixIcon: Icons.visibility_off,
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomTextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteManager.forgetPassword);
                  },
                  text: 'Forget Password',
                ),
              ],
            ),
            SizedBox(height: 8.h),
            CustomElvatedButton(onpressed: () {}, title: 'Login'),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do Not Have Account ? ',
                  style: GoogleFonts.inter(color: ColorManager.white),
                ),
                CustomTextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteManager.register);
                  },
                  text: 'Create one',
                ),
              ],
            ),
            SizedBox(width: 10.w),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: ColorManager.gold,
                    thickness: 1.sp,
                    endIndent: 10.sp,
                    indent: 100.sp,
                  ),
                ),

                // The Text
                Text(
                  'OR',
                  style: GoogleFonts.inter(
                    color: ColorManager.gold,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Expanded(
                  child: Divider(
                    color: ColorManager.gold,
                    thickness: 1.sp,
                    indent: 10.sp,
                    endIndent: 100.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            CustomElvatedButton(
              onpressed: () {},
              title: 'Continue with Google',
            ),
          ],
        ),
      ),
    );
  }
}
