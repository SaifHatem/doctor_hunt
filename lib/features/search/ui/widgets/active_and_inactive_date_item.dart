import 'package:doctor_hunt/core/theming/app_colors.dart';
import 'package:doctor_hunt/core/theming/app_styles.dart';
import 'package:doctor_hunt/features/search/data/models/date_item_model.dart';
import 'package:flutter/material.dart';

class InActiveDayItem extends StatelessWidget {
  const InActiveDayItem({
    super.key,
    required this.dateItemModel,
  });

  final DateItemModel dateItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              dateItemModel.date,
              //'Today, 23 Feb',
              style:
                  AppStyles.font16Medium.copyWith(color: AppColors.lightBlack),
            ),
            Text(
              dateItemModel.slotsAvailable,
              //'No slots available',
              style: AppStyles.font10Light.copyWith(color: AppColors.greyColor),
            ),
          ],
        ),
      ),
    );
  }
}
