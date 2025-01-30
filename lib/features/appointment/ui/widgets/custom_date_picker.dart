import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomDatePicker extends StatelessWidget {
  final DateTime minDate;
  final DateTime maxDate;
  final DateTime initialDate;
  final Function(DateTime) onDateSelected;

  const CustomDatePicker({
    super.key,
    required this.minDate,
    required this.maxDate,
    required this.initialDate,
    required this.onDateSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: DatePicker(
        minDate: minDate,
        maxDate: maxDate,
        initialDate: initialDate,
        onDateSelected: onDateSelected,
        daysOfTheWeekTextStyle: AppStyles.font13Reguler.copyWith(
          color: Colors.black,
          fontSize: 15.sp,
        ),
        enabledCellsTextStyle: AppStyles.font13Reguler.copyWith(
          color: Colors.black,
          fontSize: 15.sp,
        ),
        selectedCellTextStyle: AppStyles.font13Reguler.copyWith(
          color: Colors.white,
          fontSize: 15.sp,
        ),
        selectedCellDecoration: const BoxDecoration(
          color: AppColors.primaryColor,
          shape: BoxShape.circle,
        ),
        leadingDateTextStyle: AppStyles.font16Medium.copyWith(
          color: AppColors.primaryColor,
        ),
        slidersColor: AppColors.primaryColor,
      ),
    );
  }
}
