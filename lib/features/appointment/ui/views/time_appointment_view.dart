import 'package:flutter/material.dart';

import '../widgets/time_appointment_view_body.dart';

class TimeAppointmentView extends StatelessWidget {
  const TimeAppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TimeAppointmentViewBody(),
    );
  }
}
