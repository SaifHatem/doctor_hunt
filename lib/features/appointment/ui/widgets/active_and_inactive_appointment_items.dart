import 'package:doctor_hunt/core/theming/app_colors.dart';
import 'package:doctor_hunt/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveAppointmentItems extends StatelessWidget {
  const ActiveAppointmentItems({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 70.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          time,
          style: AppStyles.font14Medium.copyWith(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class InActiveAppointmentClockItem extends StatelessWidget {
  const InActiveAppointmentClockItem({
    super.key,
    required this.time,
  });

  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 70.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor.withOpacity(.15),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          time,
          style: AppStyles.font14Medium.copyWith(
            color: AppColors.primaryColor,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
