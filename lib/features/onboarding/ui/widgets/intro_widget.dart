import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.color,
    required this.title,
    required this.description,
    required this.image,
    required this.onTab,
    required this.index,
    required this.currentIndex,
  });

  final String color;
  final String title;
  final String description;
  final String image;
  final VoidCallback onTab;
  final int index;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    final EdgeInsets containerPadding = currentIndex == 1
        ? const EdgeInsets.only(left: 16)
        : const EdgeInsets.only(right: 16);

    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/images/bg.png',
              width: 250.w,
              height: 250.h,
              fit: BoxFit.fill,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: containerPadding,
                  child: Container(
                    height: 450.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff677294),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20.h),
                AppTextButton(
                  buttonText: 'Get Started',
                  textStyle:
                      AppStyles.font18Medium.copyWith(color: Colors.white),
                  onPressed: () {
                    if (index == currentIndex) {
                      onTab(); // Move to the next page
                    } else {
                      Navigator.pushNamed(context, Routes.signinScreen);
                    }
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signinScreen);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Color(0xff677294), fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
