import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';
import 'package:movies_app/core/route_manager/route_manager.dart';
import 'package:movies_app/core/widget/custom_elvated_button.dart';
import 'package:movies_app/core/widget/custom_text_button.dart';
import 'package:movies_app/core/widget/custom_text_form_feild.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register', style: TextStyle(color: ColorManager.gold)),
        leading: Icon(Icons.arrow_back, color: ColorManager.gold),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormFeild(
              hintText: 'Name',
              prefixIcon: Icons.drive_file_rename_outline,
            ),
            SizedBox(height: 16.h),
            CustomTextFormFeild(hintText: 'Email', prefixIcon: Icons.home),
            SizedBox(height: 16.h),
            CustomTextFormFeild(
              hintText: 'Password',
              prefixIcon: Icons.lock,
              SuffixIcon: Icons.visibility_off,
            ),
            SizedBox(height: 16.h),
            CustomTextFormFeild(
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock,
              SuffixIcon: Icons.visibility_off,
            ),
            SizedBox(height: 16.h),
            CustomTextFormFeild(hintText: 'Phone Number', prefixIcon: Icons.call),

            SizedBox(height: 22.h),
            CustomElvatedButton(onpressed: () {}, title: 'Create Account'),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already Have Account ? ', style: GoogleFonts.inter(
                  color: ColorManager.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                )),
                SizedBox(width: 4),
                CustomTextButton(onPressed: () {Navigator.pushNamed(context, RouteManager.login);}, text: 'Login'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
