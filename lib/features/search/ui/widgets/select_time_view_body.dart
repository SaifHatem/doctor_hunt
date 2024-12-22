import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/widgets/custom_background.dart';
import 'package:doctor_hunt/features/search/ui/widgets/afternoon_times_wrap.dart';
import 'package:doctor_hunt/features/search/ui/widgets/day_items_listview.dart';
import 'package:doctor_hunt/features/search/ui/widgets/search_custom_heart.dart';
import 'package:doctor_hunt/features/search/ui/widgets/select_time_custom_starts_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/custom_appbar.dart';
import 'active_and_inactive_time_item.dart';

class SelectTimeViewBody extends StatefulWidget {
  const SelectTimeViewBody({super.key});

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
          padding: EdgeInsets.only(right: 20.0.w, left: 20.0.w, top: 40.0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomAppbar(appBarTitle: 'Select Time'),
                verticalSpace(34),
                Container(
                  //width: double.infinity,
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.0.w,
                      vertical: 10.0.h,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0.h, horizontal: 10.0.w),
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

                          // Third section: Heart icon
                          const CustomHeart(),
                        ],
                      ),
                    ),
                  ),
                ),
                verticalSpace(20),
                const DayItemsListView(),
                verticalSpace(20),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Today, 23 Feb',
                    style: AppStyles.font18Medium,
                  ),
                ),
                verticalSpace(35),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Afternoon 7 slots',
                        style: AppStyles.font16Medium
                            .copyWith(color: Colors.black),
                      ),
                      verticalSpace(16),
                      const AfternoonTimesWrap(),
                      verticalSpace(21),
                      Text(
                        'Evening 5 slots',
                        style: AppStyles.font16Medium
                            .copyWith(color: Colors.black),
                      ),
                      verticalSpace(16),
                      const AfternoonTimesWrap(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Helper to build the date tab
