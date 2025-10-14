import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/shared/custom_elevated_btn.dart';
import 'package:pet_finder_app/core/themes/app_colors.dart';

class GetStartedBtn extends StatelessWidget {
  const GetStartedBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedBtn(
      onPressed: () {
        
      },
      backgroundColor: AppColors.mainColor,
      btnName: 'Get Started',
      height: 54.h,
      width: 297.w,
      icon: Icons.android_outlined,
      raduis: 30,
    );
  }
}
