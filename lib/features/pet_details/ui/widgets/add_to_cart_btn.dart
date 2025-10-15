import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/shared/custom_elevated_btn.dart';
import 'package:pet_finder_app/core/themes/app_colors.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedBtn(
      onPressed: () {},
      backgroundColor: AppColors.mainColor,
      btnName: 'Add To Cart',
      height: 54.h,
      width: double.infinity,
      raduis: 30,
    );
  }
}
