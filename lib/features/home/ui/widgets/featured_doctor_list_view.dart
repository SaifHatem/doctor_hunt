import 'package:doctor_hunt/features/home/data/models/featured_doctor_model.dart';
import 'package:doctor_hunt/features/home/ui/widgets/custom_featured_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedDoctorListView extends StatelessWidget {
  FeaturedDoctorListView({super.key});

  //! TODO: Make the list in a file alone and ensure strings in app strings

  final List<FeaturedDoctorModel> items = [
    FeaturedDoctorModel(
      doctorImage: 'assets/images/doctor.png',
      doctorName: 'Dr. Crick',
      rating: '3.7',
      price: '25.00/hours',
    ),
    FeaturedDoctorModel(
      doctorImage: 'assets/images/doctor2.png',
      doctorName: 'Dr. Strain',
      rating: '3',
      price: '22.00/hours',
    ),
    FeaturedDoctorModel(
      doctorImage: 'assets/images/doctor.png',
      doctorName: 'Dr. Crick',
      rating: '3.7',
      price: '25.00/hours',
    ),
    FeaturedDoctorModel(
      doctorImage: 'assets/images/doctor2.png',
      doctorName: 'Dr. Strain',
      rating: '3',
      price: '22.00/hours',
    ),
    FeaturedDoctorModel(
      doctorImage: 'assets/images/doctor.png',
      doctorName: 'Dr. Crick',
      rating: '3.7',
      price: '25.00/hours',
    ),
    FeaturedDoctorModel(
      doctorImage: 'assets/images/doctor2.png',
      doctorName: 'Dr. Strain',
      rating: '3',
      price: '22.00/hours',
    ),
  ];

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
              featuredDoctorModel: items[index],
            ),
          );
        },
      ),
    );
  }
}
