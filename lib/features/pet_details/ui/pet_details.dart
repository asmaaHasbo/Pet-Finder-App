import 'package:flutter/material.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/details_header.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/pet_img.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/pet_info_container.dart';

class PetDetails extends StatelessWidget {
  const PetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 180, 236, 254),
      body: SafeArea(
        child: Column(
          children: [
            DetalisHeader(),
            PetImg(),
            Expanded(child: SingleChildScrollView(child: PetInfoContainer())),
          ],
        ),
      ),
    );
  }
}
