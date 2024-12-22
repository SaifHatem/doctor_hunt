import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

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
  double currentRating = 0; // Tracks the selected rating

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.0.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 1; i <= widget.maxRating; i++)
            GestureDetector(
              onTap: () {
                setState(() {
                  currentRating = i.toDouble();
                });
              },
              child: Icon(
                i <= currentRating
                    ? Icons.star_rate_rounded
                    : Icons.star_border_rounded,
                color: i <= currentRating
                    ? AppColors.starCplors
                    : AppColors.nonSelectedStarCplors,
                size: 15.0,
              ),
            ),
        ],
      ),
    );
  }
}
