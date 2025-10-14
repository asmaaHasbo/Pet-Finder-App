import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/themes/app_styles.dart';

class PetInfo extends StatelessWidget {
  const PetInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          // pet.name,
          'Cat',
          style: AppTextStyles.font18W700black,
        ),
        SizedBox(height: 4.h),
        Text(
          // pet.gender,
          'Male',
          style: AppTextStyles.font14W400gray,
        ),
        SizedBox(height: 2.h),
        Text(
          // pet.age,
          '5 month',
          style: AppTextStyles.font14W400gray,
        ),
        SizedBox(height: 8.h),
        Row(
          children: [
            Icon(
              Icons.location_on,
              size: 16.sp,
              color: const Color(0xFFFF5252),
            ),
            SizedBox(width: 4.w),
            Text(
              // pet.distance,
              '1.5 km',
              style: AppTextStyles.font14W400gray,
            ),
          ],
        ),
      ],
    );
  }
}
