import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/themes/app_colors.dart';
import 'package:pet_finder_app/core/themes/app_styles.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';

class PetDescription extends StatelessWidget {
  const PetDescription({super.key, required this.breedModel});
  final BreedModel breedModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About:', style: AppTextStyles.font20W700darkBlack),

        SizedBox(height: 12.h),

        Text(
          breedModel.description ?? 'No discription',
          style: AppTextStyles.font14W600mainColor.copyWith(
            color: AppColors.gray,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
