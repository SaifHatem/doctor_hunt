import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomImageColumn extends StatelessWidget {
  final String imagePath;
  final String label;

  const CustomImageColumn({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100.w,
          height: 125.h,
          child: Image.asset(
            imagePath,
          ),
        ),
        Text(
          label,
          style: AppStyles.font13Reguler.copyWith(
            fontSize: 14,
            color: AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}
