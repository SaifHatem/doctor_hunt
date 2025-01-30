import 'package:flutter/material.dart';

import '../widgets/patient_appointment_view_body.dart';

class PatientAppointmentView extends StatelessWidget {
  const PatientAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PatientAppointmentViewBody(),
    );
  }
}
