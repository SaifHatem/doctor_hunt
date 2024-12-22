import 'package:doctor_hunt/features/home/ui/screens/home_view.dart';
import 'package:doctor_hunt/features/settings/ui/screens/settings_screen.dart';

import '../helpers/route_export.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../theming/app_colors.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({super.key});

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeView(),
    const SettingsView(),
    const HomeView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 13.h),
          child: GNav(
            gap: 1,
            backgroundColor: Colors.white,
            tabBorderRadius: 40.r,
            color: AppColors.greyColor,
            activeColor: Colors.white,
            tabBackgroundColor: AppColors.primaryColor,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: const [
              GButton(icon: Icons.home),
              GButton(icon: Icons.favorite),
              GButton(icon: Icons.menu_book_sharp),
              GButton(icon: Icons.chat),
            ],
          ),
        ),
      ),
    );
  }
}
