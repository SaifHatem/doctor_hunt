import 'package:doctor_hunt/features/home/data/models/popular_doctor_model.dart';
import 'package:doctor_hunt/features/home/ui/widgets/custom_popular_doctor_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDoctorListView extends StatelessWidget {
  PopularDoctorListView({super.key});

  final List<PopularDoctorModel> items = [
    PopularDoctorModel(
      doctorImage: 'assets/images/doctor.png',
      doctorName: 'Dr. Fillerup Grab',
      doctorMajor: 'Medicine Specialist',
    ),
    PopularDoctorModel(
      doctorImage: 'assets/images/doctor2.png',
      doctorName: 'Dr. Blessing',
      doctorMajor: 'Dentist Specialist',
    ),
    PopularDoctorModel(
      doctorImage: 'assets/images/doctor.png',
      doctorName: 'Dr. Fillerup Grab',
      doctorMajor: 'Medicine Specialist',
    ),
    PopularDoctorModel(
      doctorImage: 'assets/images/doctor2.png',
      doctorName: 'Dr. Blessing',
      doctorMajor: 'Dentist Specialist',
    ),
    PopularDoctorModel(
      doctorImage: 'assets/images/doctor.png',
      doctorName: 'Dr. Fillerup Grab',
      doctorMajor: 'Medicine Specialist',
    ),
    PopularDoctorModel(
      doctorImage: 'assets/images/doctor2.png',
      doctorName: 'Dr. Blessing',
      doctorMajor: 'Dentist Specialist',
    ),
  ];

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
              popularDoctorModel: items[index],
            ),
          );
        },
      ),
    );
  }
}
