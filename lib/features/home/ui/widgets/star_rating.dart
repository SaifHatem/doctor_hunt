import 'package:doctor_hunt/core/theming/app_colors.dart';

import '../../../../core/helpers/route_export.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  StarRatingState createState() => StarRatingState();
}

class StarRatingState extends State<StarRating> {
  int _selectedRating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        int starIndex = index;
        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedRating = starIndex + 1;
            });
          },
          child: Icon(
            Icons.star_rate_rounded,
            color: starIndex < _selectedRating
                ? AppColors.starCplors
                : AppColors.nonSelectedStarCplors,
            size: 30,
          ),
        );
      }),
    );
  }
}
