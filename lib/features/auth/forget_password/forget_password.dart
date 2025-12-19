import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/asset_manager/asset_manager.dart';
import 'package:movies_app/core/color_manager/color_manager.dart';
import 'package:movies_app/core/widget/custom_elvated_button.dart';
import 'package:movies_app/core/widget/custom_text_form_feild.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        leading: Icon(Icons.arrow_back, color: ColorManager.gold,), 
        title: Text('Forget Password', style: GoogleFonts.inter(color: ColorManager.gold),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(ImageAsset.ForgetPassword),
            CustomTextFormFeild(
              hintText: 'Email',
              prefixIcon: Icons.email,
            ),
            SizedBox(height: 16.h,),
            CustomElvatedButton(onpressed: (){}, title: 'Verify Email'),
          ],
        ),
      ),
    );
  }
}
