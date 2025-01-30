import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/features/appointment/ui/views/doctor_details_view.dart';
import 'package:doctor_hunt/features/appointment/ui/views/patient_appointment_view.dart';
import 'package:doctor_hunt/features/home/ui/screens/home_view.dart';
import 'package:doctor_hunt/features/search/ui/views/search_view.dart';
import 'package:doctor_hunt/features/search/ui/views/select_time_view.dart';

import '../../features/appointment/ui/views/time_appointment_view.dart';
import '../../features/auth/ui/views/login_view.dart';
import '../helpers/route_export.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../../features/settings/ui/screens/settings_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (context) => const IntroView(),
        );
      case Routes.signinView:
        return MaterialPageRoute(
          builder: (context) => const LoginView(),
        );
      case Routes.signupView:
        return MaterialPageRoute(
          builder: (context) => const RegisterView(),
        );
      case Routes.homeview:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
        );
      case Routes.bottomNavigationView:
        return MaterialPageRoute(
          builder: (context) => const BottomNavigationView(),
        );
      case Routes.settingsView:
        return MaterialPageRoute(
          builder: (context) => const SettingsView(),
        );
      case Routes.searchView:
        return MaterialPageRoute(
          builder: (context) => const SearchView(),
        );
      case Routes.selectTimeView:
        return MaterialPageRoute(
          builder: (context) => const SelectTimeView(),
        );

      case Routes.doctorDetailsView:
        return MaterialPageRoute(
          builder: (context) => const DoctorDetailsView(),
        );
      case Routes.patientAppointmentView:
        return MaterialPageRoute(
          builder: (context) => const PatientAppointmentView(),
        );
      case Routes.timeAppointmentView:
        return MaterialPageRoute(
          builder: (context) => const TimeAppointmentView(),
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
