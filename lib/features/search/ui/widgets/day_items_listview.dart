import 'package:doctor_hunt/features/search/ui/widgets/active_and_inactive_date_item.dart';
import 'package:flutter/material.dart';
import 'package:doctor_hunt/features/search/data/models/date_item_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayItemsListView extends StatefulWidget {
  const DayItemsListView({super.key});

  @override
  State<DayItemsListView> createState() => _DayItemsListViewState();
}

class _DayItemsListViewState extends State<DayItemsListView> {
  final List<DateItemModel> items = [
    DateItemModel(date: 'Today, 23 Feb', slotsAvailable: 'No slots available'),
    DateItemModel(
        date: 'Tomorrow, 24 Feb', slotsAvailable: '9 slots available'),
    DateItemModel(date: '25 Feb, Sat', slotsAvailable: '3 slots available'),
    DateItemModel(date: '26 Feb, Sun', slotsAvailable: 'Fully booked'),
    DateItemModel(date: '27 Feb, Mon', slotsAvailable: '5 slots available'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: selectedIndex == index
                ? ActiveDayItem(dateItemModel: items[index])
                : InActiveDayItem(dateItemModel: items[index]),
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
