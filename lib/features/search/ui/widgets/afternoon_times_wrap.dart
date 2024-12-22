import 'package:flutter/material.dart';

import 'active_and_inactive_time_item.dart';

class AfternoonTimesWrap extends StatefulWidget {
  const AfternoonTimesWrap({super.key});

  @override
  State<AfternoonTimesWrap> createState() => _AfternoonTimesWrap();
}

class _AfternoonTimesWrap extends State<AfternoonTimesWrap> {
  final List<String> clockItems = [
    '12:30 pm',
    '1:00 pm',
    '1:30 pm',
    '2:00 pm',
    '2:30 pm',
    '3:00 pm',
    '3:30 pm',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 16.0, // Horizontal space between items
        runSpacing: 16.0, // Vertical space between rows
        children: List.generate(clockItems.length, (index) {
          return GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: selectedIndex == index
                ? ActiveClockItem(time: clockItems[index])
                : InActiveClockItem(time: clockItems[index]),
          );
        }),
      ),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
