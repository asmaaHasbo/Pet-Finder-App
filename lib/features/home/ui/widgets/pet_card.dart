import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/core/themes/app_colors.dart';
import 'package:pet_finder_app/features/home/ui/widgets/favorite_btn.dart';
import 'package:pet_finder_app/features/home/ui/widgets/pet_img.dart';
import 'package:pet_finder_app/features/home/ui/widgets/pet_info.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 120.h,
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.gray, width: .3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PetImage(
            imageUrl:
                'https://images.unsplash.com/photo-1513360371669-4adf3dd7dff8?w=400',
          ),
          SizedBox(width: 16.w),
          const Expanded(child: PetInfo()),
          const FavoriteButton(),
        ],
      ),
    );
  }
}
