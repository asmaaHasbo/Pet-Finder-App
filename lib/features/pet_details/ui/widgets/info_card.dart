import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/themes/app_colors.dart';
import 'package:pet_finder_app/core/themes/app_styles.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105.w,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.mintGreen,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.font18W500white.copyWith(
              color: AppColors.darkBlack,
            ),
          ),
          SizedBox(height: 4.h),
          Text(value, style: AppTextStyles.font16W400Gray),
        ],
      ),
    );
  }
}
