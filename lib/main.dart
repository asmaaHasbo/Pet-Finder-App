import 'package:flutter/material.dart';
import 'package:pet_finder_app/core/di/di.dart';
import 'package:pet_finder_app/pet_app.dart';

void main() async {
  await setupGetIt();
  runApp(const PetFinderApp());
}
