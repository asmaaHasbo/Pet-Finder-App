import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/info_cards_row.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/pet_name_price_location.dart';

class PetInfoContainer extends StatelessWidget {
  const PetInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PetNamePriceLocation(),
          SizedBox(height: 12.h),
          const InfoCardsRow(),
          SizedBox(height: 24.h),
          // const DogAboutSection(),
          // SizedBox(height: 32.h),
          // const AdoptButton(),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
