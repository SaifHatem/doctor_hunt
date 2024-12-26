import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/widgets/custom_background.dart';
import 'package:doctor_hunt/features/search/ui/widgets/afternoon_times_wrap.dart';
import 'package:doctor_hunt/features/search/ui/widgets/day_items_listview.dart';
import 'package:doctor_hunt/features/search/ui/widgets/search_custom_heart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/custom_appbar.dart';
import 'select_time_custom_starts_rating.dart';

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
                _buildDoctorInfo(),
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

  Widget _buildDoctorInfo() {
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
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.0.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/doctor.png',
              height: 87.0.h,
              width: 92.0.w,
            ),
            horizontalSpace(8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Shruti Kediadi',
                    style: AppStyles.font18Medium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    'Upasana Dental Clinic, salt lake',
                    style: AppStyles.font12Light,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SelectTimeCustomStarsRating(),
                ],
              ),
            ),
            const CustomHeart(),
          ],
        ),
      ),
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
