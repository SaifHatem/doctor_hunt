import 'custom_featured_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'featured_doctors_list.dart';

class FeaturedDoctorListView extends StatelessWidget {
  const FeaturedDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 15.0.w),
            child: CustomFeaturedDoctorContainer(
              featuredDoctorModel: featuredDoctors[index],
            ),
          );
        },
      ),
    );
  }
}
