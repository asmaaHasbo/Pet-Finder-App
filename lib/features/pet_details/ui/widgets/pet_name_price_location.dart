import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/themes/app_colors.dart';
import 'package:pet_finder_app/core/themes/app_styles.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';

class PetNamePriceLocation extends StatelessWidget {
  const PetNamePriceLocation({super.key, required this.breedModel});
  final BreedModel breedModel;
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
              breedModel.name!,
              // 'Tom',
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
                Text(breedModel.origin!, style: AppTextStyles.font14W400gray),
              ],
            ),
          ],
        ),
        Text(
          '\$${breedModel.dogFriendly}34',
          style: AppTextStyles.font26W700MainColor,
        ),
      ],
    );
  }
}
