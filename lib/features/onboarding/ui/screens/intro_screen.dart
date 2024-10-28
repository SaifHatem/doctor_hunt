import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/intro_widget.dart';

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  int _activePage = 0;

  void onNextPage() {
    if (_activePage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,
      );
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
                index: index, // Pass the index parameter here
                currentIndex: _activePage, // Pass the current active page
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