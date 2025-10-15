import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/themes/app_colors.dart';
import 'package:pet_finder_app/core/themes/app_styles.dart';

class PetNamePriceLocation extends StatelessWidget {
  const PetNamePriceLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tom',
              style: AppTextStyles.font26W700MainColor.copyWith(
                color: AppColors.darkBlack,
              ),
            ),

            // SizedBox(height: 10.h),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: const Color(0xFFFF6B6B),
                  size: 18.sp,
                ),
                SizedBox(width: 4.w),
                Text('2.7 km away', style: AppTextStyles.font14W400gray),
              ],
            ),
          ],
        ),
        Text('\$95', style: AppTextStyles.font26W700MainColor),
      ],
    );
  }
}
