import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/features/auth/ui/screens/signin_screen.dart';
import 'package:doctor_hunt/features/onboarding/ui/screens/intro_screen.dart';
import 'package:flutter/material.dart';

import '../../features/auth/ui/screens/signup_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const IntroScreen(),
        );
      case Routes.signinScreen:
        return MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (context) => const SignupScreen(),
        );

      default:
        return null;
      // MaterialPageRoute(
      //   builder: (context) => Scaffold(
      //     body: Center(
      //       child: Text(
      //         "No route defined for ${settings.name}",
      //       ),
      //     ),
      //   ),
      // );
    }
  }
}
// The code snippet is a class named AppRouter that contains a method
// generateRoute which determines the route to be displayed based
// on the provided settings.
// The method generateRoute takes a settings object as input.
// It checks the name property of the settings object using a switch statement.
// If the name matches Routes.onBoardingScreen, it returns a
// MaterialPageRoute with a screen.
// If the name matches Routes.loginScreen, it returns a
// MaterialPageRoute with a screen.
// If no match is found, it returns a MaterialPageRoute with a Scaffold
// displaying a message indicating the route name that was not defined.
