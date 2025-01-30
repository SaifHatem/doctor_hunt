import 'package:doctor_hunt/core/helpers/route_export.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import 'doctor_details_custom_statistics_container.dart';

class DoctorDetailsStatisticsRow extends StatelessWidget {
  const DoctorDetailsStatisticsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child:
                    CustomStatisticsContainer(number: '100', title: 'Runing'),
              ),
              horizontalSpace(8),
              const Expanded(
                child:
                    CustomStatisticsContainer(number: '500', title: 'Ongoing'),
              ),
              horizontalSpace(8),
              const Expanded(
                child:
                    CustomStatisticsContainer(number: '700', title: 'Patient'),
              )
            ],
          ),
        ));
  }
}
