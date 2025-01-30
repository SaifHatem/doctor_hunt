import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/widgets/custom_background.dart';
import 'package:doctor_hunt/features/search/ui/widgets/afternoon_times_wrap.dart';
import 'package:doctor_hunt/features/search/ui/widgets/build_doctor_info.dart';
import 'package:doctor_hunt/features/search/ui/widgets/day_items_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/custom_appbar.dart';

class SelectTimeViewBody extends StatefulWidget {
  const SelectTimeViewBody({super.key});
//! TODO: Refactor the code to use the new custom widgets
  @override
  State<SelectTimeViewBody> createState() => _SelectTimeViewBodyState();
}

class _SelectTimeViewBodyState extends State<SelectTimeViewBody> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackground(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 40.0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppbar(appBarTitle: 'Select Time'),
                verticalSpace(34),
                DoctorInfoCard(
                  onTap: () =>
                      Navigator.pushNamed(context, Routes.doctorDetailsView),
                ),
                verticalSpace(20),
                const DayItemsListView(),
                verticalSpace(20),
                _buildDateHeader(),
                verticalSpace(35),
                _buildTimeSlotsSection(
                    'Afternoon 7 slots', const AfternoonTimesWrap()),
                verticalSpace(21),
                _buildTimeSlotsSection(
                    'Evening 5 slots', const AfternoonTimesWrap()),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateHeader() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        //! TODO: Add all strings in AppStrings class
        'Today, 23 Feb',
        style: AppStyles.font18Medium,
      ),
    );
  }

  Widget _buildTimeSlotsSection(String title, Widget timeSlots) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyles.font16Medium.copyWith(color: Colors.black),
          ),
          verticalSpace(16),
          timeSlots,
        ],
      ),
    );
  }
}
