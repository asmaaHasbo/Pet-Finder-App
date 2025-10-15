import 'package:flutter/material.dart';
import 'package:pet_finder_app/features/home/data/model/breed_model/breed_model.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/info_card.dart';

class InfoCardsRow extends StatelessWidget {
  const InfoCardsRow({super.key, required this.breedModel});
  final BreedModel breedModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InfoCard(
          title: 'Frinds',
          value: breedModel.dogFriendly.toString() ?? '5',
        ),
        InfoCard(title: 'Age', value: breedModel.lifeSpan ?? '3 - 7'),
        InfoCard(title: 'Weight', value: (breedModel.childFriendly.toString()) ?? '9'),
      ],
    );
  }
}
