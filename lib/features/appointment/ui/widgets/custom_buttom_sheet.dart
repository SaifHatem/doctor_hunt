import 'package:doctor_hunt/core/theming/app_styles.dart';
import 'package:doctor_hunt/features/appointment/ui/widgets/show_success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_hunt/core/helpers/spacing.dart';

import '../../../../core/widgets/app_text_button.dart';
import 'active_and_inactive_appointment_clock_listview.dart';
import 'active_and_inactive_appointment_reminder_listview.dart';

class CustomBottomSheet extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onConfirm;

  const CustomBottomSheet({
    super.key,
    required this.selectedDate,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // Full width
      padding: EdgeInsets.all(20.0.w),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Available Time',
            style: AppStyles.font16Medium.copyWith(color: Colors.black),
          ),
          verticalSpace(27),
          const ActiveAndInactiveAppointmentClockListview(),
          verticalSpace(38),
          Text(
            'Available Time',
            style: AppStyles.font16Medium.copyWith(color: Colors.black),
          ),
          verticalSpace(27),
          const ActiveAndInactiveAppointmentReminderListview(),
          verticalSpace(20),
          Center(
            child: AppTextButton(
              buttonText: 'Confirm',
              textStyle: AppStyles.font18Medium.copyWith(color: Colors.white),
              onPressed: () {
                showSuccessDialog(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
