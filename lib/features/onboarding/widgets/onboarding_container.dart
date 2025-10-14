import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/themes/app_styles.dart';
import 'package:pet_finder_app/features/onboarding/widgets/get_started_btn.dart';

class OnboardingContainer extends StatelessWidget {
  const OnboardingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //===============================
        Text(
          'Find Your Best Companion With Us',
          style: AppTextStyles.font32W700darkBlack,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 5.h),

        //===============================
        Text(
          'Join & discover the best suitable pets as \n per your preferences in your location',
          style: AppTextStyles.font16W400Gray,
          textAlign: TextAlign.center,
        ),

        //==============================
        SizedBox(height: 10.h),

        const GetStartedBtn(),
      ],
    );
  }
}
