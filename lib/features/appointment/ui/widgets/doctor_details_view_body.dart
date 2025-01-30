import 'package:doctor_hunt/core/helpers/spacing.dart';
import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/core/widgets/custom_appbar.dart';
import 'package:doctor_hunt/features/search/ui/widgets/build_doctor_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/custom_background.dart';
import 'doctor_details_custom_list_with_divider.dart';
import 'doctor_details_custom_maps.dart';
import 'doctor_details_statistics_row.dart';

class DoctorDetailsViewBody extends StatelessWidget {
  const DoctorDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackground(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 40.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(
                appBarTitle: 'Doctor Details',
              ),
              verticalSpace(34),
              const DoctorInfoCard(),
              verticalSpace(10),

              //! Make button here as it is nearly I make it a lot so I focus on new ui instead of making another custom widget for this simple change
              Center(
                child: AppTextButton(
                  buttonWidth: 112,
                  buttonHeight: 34,
                  borderRadius: 4.r,
                  buttonText: 'Book',
                  textStyle: AppStyles.font12Medium,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Routes.patientAppointmentView,
                    );
                  },
                ),
              ),
              verticalSpace(24),
              const DoctorDetailsStatisticsRow(),
              verticalSpace(27),
              Text(
                'Services',
                style: AppStyles.font18Medium,
              ),
              verticalSpace(17),
              const CustomListWithDivider(
                items: [
                  'Patient care should be the number one priority.',
                  'If you run your practiceyou know how frustrating.',
                  "That's why some of appointment reminder system.",
                ],
              ),
              verticalSpace(15),
              const Expanded(
                child: CustomMap(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
