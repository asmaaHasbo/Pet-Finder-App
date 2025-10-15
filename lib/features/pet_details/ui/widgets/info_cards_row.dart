import 'package:flutter/material.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/info_card.dart';

class InfoCardsRow extends StatelessWidget {
  const InfoCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InfoCard(title: 'Gender', value: 'Male'),
        InfoCard(title: 'Age', value: '1 Year'),
        InfoCard(title: 'Weight', value: '10 kg'),
      ],
    );
  }
}
