import 'package:doctor_hunt/core/theming/app_colors.dart';
import 'package:doctor_hunt/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class ActiveClockItem extends StatelessWidget {
  const ActiveClockItem({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          time,
          style: AppStyles.font16Medium,
        ),
      ),
    );
  }
}

class InActiveClockItem extends StatelessWidget {
  const InActiveClockItem({
    super.key,
    required this.time,
  });

  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColors.primaryColor.withOpacity(.15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          time,
          style: AppStyles.font13Reguler.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
