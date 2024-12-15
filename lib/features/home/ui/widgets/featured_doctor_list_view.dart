import 'package:doctor_hunt/features/home/logic/popular_doctors_cubit/fetch_popular_doctors_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_featured_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedDoctorListView extends StatelessWidget {
  const FeaturedDoctorListView({super.key});

  static const double listViewHeight = 320.0; //! Define a constant for height

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPopularDoctorsCubit, FetchPopularDoctorsState>(
      builder: (context, state) {
        if (state is FetchPopularDoctorsSuccess) {
          return SizedBox(
            height: listViewHeight.h, //! Use the constant here
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.doctors.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 15.0.w),
                  child: CustomFeaturedDoctorContainer(
                    allDoctorsModel: state.doctors[index],
                  ),
                );
              },
            ),
          );
        } else if (state is FetchPopularDoctorsError) {
          return Center(
            child: Text(state.errorMessage.isNotEmpty
                ? state.errorMessage
                : 'An error occurred'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
