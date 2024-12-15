import 'package:doctor_hunt/features/home/logic/popular_doctors_cubit/fetch_popular_doctors_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_popular_doctor_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDoctorListView extends StatelessWidget {
  const PopularDoctorListView({super.key});

  static const double listViewHeight = 320.0; //! Define a constant for height
  static const double itemPadding = 15.0; //! Define a constant for padding

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
                  padding: EdgeInsets.only(right: itemPadding.w), //! Use the constant for padding
                  child: CustomPopularDoctorContainer(
                    allDoctorModel: state.doctors[index],
                  ),
                );
              },
            ),
          );
        } else if (state is FetchPopularDoctorsError) {
          return Center(
            child: Text(state.errorMessage.isNotEmpty ? state.errorMessage : 'An error occurred'), //! Default error message
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