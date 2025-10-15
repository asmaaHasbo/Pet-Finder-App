import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';
import 'package:pet_finder_app/features/home/ui/widgets/pet_card.dart';

class PetList extends StatelessWidget {
  const PetList({super.key,required this.breedList});
  final List<BreedModel> breedList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 8,
      separatorBuilder: (context, index) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        return PetCard(breedModel: breedList[index]);
      },
    );
  }
}
