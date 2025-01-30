import 'package:doctor_hunt/features/appointment/ui/widgets/active_and_inactive_appointment_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveAndInactiveAppointmentReminderListview extends StatefulWidget {
  const ActiveAndInactiveAppointmentReminderListview({super.key});

  @override
  State<ActiveAndInactiveAppointmentReminderListview> createState() =>
      _ActiveAndInactiveAppointmentReminderListview();
}

class _ActiveAndInactiveAppointmentReminderListview
    extends State<ActiveAndInactiveAppointmentReminderListview> {
  //! TODO: Add the following list of strings to a separated file ...
  final List<String> clockItems = [
    '5 Minites',
    '10 Minites',
    '15 Minites',
    '20 Minites',
    '25 Minites',
    '30 Minites',
    '35 Minites',
    '40 Minites',
    '45 Minites',
    '50 Minites',
    '55 Minites',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: clockItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: selectedIndex == index
                ? ActiveAppointmentItems(time: clockItems[index])
                : InActiveAppointmentClockItem(time: clockItems[index]),
          );
        },
      ),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
