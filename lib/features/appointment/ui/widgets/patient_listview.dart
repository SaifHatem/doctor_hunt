import 'package:doctor_hunt/core/theming/app_colors.dart';
import 'package:doctor_hunt/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'patient_appointment_custom_image_column.dart';
import 'patient_list.dart';

class PatientListView extends StatelessWidget {
  const PatientListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 8.0.w),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90.w,
                  height: 125.h,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add_outlined,
                        size: 40.sp,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        'Add',
                        style: AppStyles.font18Reguler.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: patientItems.length,
              itemBuilder: (context, index) {
                final item = patientItems[index];
                return Padding(
                  padding: EdgeInsets.only(right: 8.0.w),
                  child: CustomImageColumn(
                    imagePath: item['imagePath']!,
                    label: item['label']!,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
