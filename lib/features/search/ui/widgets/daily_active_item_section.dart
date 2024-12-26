import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../data/models/date_item_model.dart';

class ActiveDayItem extends StatelessWidget {
  const ActiveDayItem({
    super.key,
    required this.dateItemModel,
  });

  final DateItemModel dateItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0.r),
        child: Column(
          children: [
            Text(
              dateItemModel.date,
              //'Today, 23 Feb',
              style: AppStyles.font16Medium,
            ),
            Text(
              dateItemModel.slotsAvailable,

              //'9 slots available',
              style: AppStyles.font10Light,
            ),
          ],
        ),
      ),
    );
  }
}
