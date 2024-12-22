import 'dart:ui';

import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/features/onboarding/ui/widgets/intro_widget.dart';

import '../../../../core/helpers/route_export.dart';

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  final PageController _pageController = PageController();
  int _activePage = 0;

  void onNextPage() {
    if (_activePage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,
      );
    } else {
      Navigator.pushNamed(context, Routes.signinView); // Navigate on last page
    }
  }

  void onSkip() {
    _pageController.jumpToPage(_pages.length - 1);
  }

  final List<Map<String, dynamic>> _pages = [
    {
      'color': '#ffffff',
      'title': 'Find Trusted Doctors',
      'image': 'assets/images/onboarding1.png',
      'description':
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
    },
    {
      'color': '#ffffff',
      'title': 'Choose Best Doctors',
      'image': 'assets/images/onboarding3.png',
      'description':
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
    },
    {
      'color': '#ffffff',
      'title': 'Easy Appointments',
      'image': 'assets/images/onboarding2.png',
      'description':
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            scrollBehavior: AppScrollBehavior(),
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              final page = _pages[index];
              return IntroWidget(
                index: index,
                currentIndex: _activePage,
                color: page['color'],
                title: page['title'],
                description: page['description'],
                image: page['image'],
                onTab: onNextPage,
              );
            },
          ),
        ],
      ),
    );
  }
}
