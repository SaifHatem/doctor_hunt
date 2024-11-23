import 'package:doctor_hunt/features/home/ui/widgets/popular_doctors_list.dart';

import 'custom_popular_doctor_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDoctorListView extends StatelessWidget {
  const PopularDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 15.0.w),
            child: CustomPopularDoctorContainer(
              popularDoctorModel: popularDoctors[index],
            ),
          );
        },
      ),
    );
  }
}
