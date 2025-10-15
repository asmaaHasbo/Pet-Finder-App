import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/add_to_cart_btn.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/info_cards_row.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/pet_description.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/pet_name_price_location.dart';

class PetInfoContainer extends StatelessWidget {
  const PetInfoContainer({super.key, required this.breedModel});
  final BreedModel breedModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.w),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PetNamePriceLocation(breedModel: breedModel),
          SizedBox(height: 12.h),
          InfoCardsRow(breedModel: breedModel),
          SizedBox(height: 24.h),
          PetDescription(breedModel: breedModel),
          SizedBox(height: 32.h),
          const AddToCartBtn(),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
