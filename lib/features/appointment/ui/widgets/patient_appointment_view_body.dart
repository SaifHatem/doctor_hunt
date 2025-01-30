import 'package:doctor_hunt/core/widgets/app_text_button.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';
import 'package:doctor_hunt/features/appointment/ui/widgets/patient_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../search/ui/widgets/build_doctor_info.dart';

class PatientAppointmentViewBody extends StatelessWidget {
  const PatientAppointmentViewBody({super.key});

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
                appBarTitle: 'Appointment',
              ),
              verticalSpace(34),
              const DoctorInfoCard(),
              verticalSpace(30),
              Text(
                'Appointment For',
                style: AppStyles.font16Medium.copyWith(
                  color: Colors.black,
                ),
              ),
              verticalSpace(20),
              AppTextFormField(
                hintText: 'Patient Names',
                hintStyle: AppStyles.font12Light.copyWith(fontSize: 14.sp),
                fillColor: Colors.transparent,
              ),
              verticalSpace(18),
              AppTextFormField(
                hintText: 'Contact Number',
                hintStyle: AppStyles.font12Light.copyWith(fontSize: 14.sp),
                fillColor: Colors.transparent,
              ),
              verticalSpace(30),
              Text(
                'Who is this patient?',
                style: AppStyles.font16Medium.copyWith(
                  color: Colors.black,
                ),
              ),
              verticalSpace(20),
              const PatientListView(),
              verticalSpace(18),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0.w),
                child: AppTextButton(
                  buttonText: 'Next',
                  textStyle: AppStyles.font18Medium.copyWith(
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.timeAppointmentView);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
