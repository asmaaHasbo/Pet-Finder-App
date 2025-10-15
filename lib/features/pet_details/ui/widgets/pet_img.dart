import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';

class PetImg extends StatelessWidget {
  const PetImg({super.key, required this.breedModel});
  final BreedModel breedModel;
  @override
  Widget build(BuildContext context) {
    String imgUrl =
        'https://cdn2.thecatapi.com/images/${breedModel.referenceImageId}.jpg';

    return Container(
      height: 350.h,
      decoration: BoxDecoration(
        color: const Color(0xFFD4E8EB),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10.r),
          child: Image.network(
            imgUrl,
            height: double.infinity,
            fit: BoxFit.cover,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.pets, size: 100.sp, color: Colors.grey);
            },
          ),
        ),
      ),
    );
  }
}
