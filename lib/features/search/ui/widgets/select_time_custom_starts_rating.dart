import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'star_icon_section.dart';

class SelectTimeCustomStarsRating extends StatefulWidget {
  const SelectTimeCustomStarsRating({
    super.key,
    this.maxRating = 5,
  });

  final int maxRating;

  @override
  State<SelectTimeCustomStarsRating> createState() =>
      _SelectTimeCustomStarsRatingState();
}

class _SelectTimeCustomStarsRatingState
    extends State<SelectTimeCustomStarsRating> {
  double _currentRating = 0; // Tracks the selected rating

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.0.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.maxRating, (index) {
          int starIndex = index + 1; // Adjusting index for 1-based rating
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentRating = starIndex.toDouble();
              });
            },
            child: StarIcon(
              isSelected: starIndex <= _currentRating,
              size: 15.0,
            ),
          );
        }),
      ),
    );
  }
}
