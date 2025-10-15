import 'package:flutter/material.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/details_header.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/pet_img.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/pet_info_container.dart';

class PetDetails extends StatelessWidget {
  const PetDetails({super.key, required this.breedModel});
  final BreedModel breedModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                PetImg(breedModel: breedModel),
                Expanded(
                  child: SingleChildScrollView(
                    child: PetInfoContainer(breedModel: breedModel),
                  ),
                ),
              ],
            ),

            const Positioned(top: 0, right: 0, left: 0, child: DetalisHeader()),
          ],
        ),
      ),
    );
  }
}
