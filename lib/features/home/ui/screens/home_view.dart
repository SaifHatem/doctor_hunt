import 'package:doctor_hunt/core/helpers/route_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeScreenBody(),
      ),
    );
  }
}
