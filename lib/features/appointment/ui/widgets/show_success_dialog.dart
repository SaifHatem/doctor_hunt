import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 150.w,
              height: 150.h,
              decoration: const BoxDecoration(
                color: Color(0xffE7F8F2),
                shape: BoxShape.circle,
              ),
              child: SizedBox(
                width: 90.w,
                height: 90.h,
                child: Icon(
                  Icons.thumb_up,
                  color: AppColors.primaryColor,
                  size: 65.sp,
                ),
              ),
            ),
            verticalSpace(12),
            Text(
              'Thank You!',
              style: AppStyles.font16Medium.copyWith(
                fontSize: 38.sp,
                color: Colors.black,
              ),
            ),
            verticalSpace(5),
            Text(
              'Your Appointment Successful',
              textAlign: TextAlign.center,
              style: AppStyles.font18Reguler.copyWith(
                fontSize: 20.sp,
                color: AppColors.greyColor,
              ),
            ),
            verticalSpace(29),
            Text(
              'You booked an appointment with Dr. Pediatrician Purpleson on February 21, at 02:00 PM',
              textAlign: TextAlign.center,
              style: AppStyles.font13Reguler.copyWith(
                fontSize: 14.sp,
                color: AppColors.greyColor,
              ),
            ),
            verticalSpace(29),
            AppTextButton(
              buttonText: 'Done',
              textStyle: AppStyles.font16Medium.copyWith(
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            verticalSpace(18),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Edit your appointment',
                style: AppStyles.font13Reguler.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.greyColor,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
