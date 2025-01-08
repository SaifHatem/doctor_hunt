import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';

class CustomStatisticsContainer extends StatelessWidget {
  const CustomStatisticsContainer({
    super.key,
    required this.number,
    required this.title,
  });

  final String number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.r),
        color: const Color(0xffCBCBCB).withOpacity(.2),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.0.h),
        child: Column(
          children: [
            Text(
              number,
              style: AppStyles.font18Medium,
            ),
            Text(
              title,
              style: AppStyles.font16Light,
            ),
          ],
        ),
      ),
    );
  }
}
