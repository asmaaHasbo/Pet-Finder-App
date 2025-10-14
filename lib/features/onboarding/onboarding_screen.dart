import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/features/onboarding/widgets/onboarding_container.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // الصورة الرئيسية
              Image.asset(
                'assets/images/on_boarding_bg.png',
                fit: BoxFit.cover,
              ),
              SizedBox(height: 70.h),
              const OnboardingContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
