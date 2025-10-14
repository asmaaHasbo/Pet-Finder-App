import 'package:flutter/material.dart';
import 'package:pet_finder_app/core/routing/routes.dart';
import 'package:pet_finder_app/features/main_page/main_page.dart';
import 'package:pet_finder_app/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.mainPage:
        return MaterialPageRoute(builder: (_) => const MainPage());

      default:
        // Unknown route
        return null;
    }
  }
}
