import 'package:doctor_hunt/core/helpers/route_export.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
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
