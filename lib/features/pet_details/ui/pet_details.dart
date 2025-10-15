import 'package:flutter/material.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/details_header.dart';
import 'package:pet_finder_app/features/pet_details/ui/widgets/pet_img.dart';

class PetDetails extends StatelessWidget {
  const PetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE8F4F8),
      body: SafeArea(
        child: Column(
          children: [
            DetalisHeader(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                  PetImg(),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}