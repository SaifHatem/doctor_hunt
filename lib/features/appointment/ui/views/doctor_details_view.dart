import 'package:doctor_hunt/features/appointment/ui/widgets/doctor_details_view_body.dart';
import 'package:flutter/material.dart';

class DoctorDetailsView extends StatelessWidget {
  const DoctorDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DoctorDetailsViewBody(),
    );
  }
}
