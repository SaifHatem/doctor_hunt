import 'package:doctor_hunt/core/helpers/route_export.dart';
import 'package:doctor_hunt/features/home/data/models/featured_doctor_model.dart';

class CustomRatingForFeatureDoctor extends StatefulWidget {
  const CustomRatingForFeatureDoctor({
    super.key,
    required this.featuredDoctorModel,
  });

  final FeaturedDoctorModel featuredDoctorModel;

  @override
  State<CustomRatingForFeatureDoctor> createState() =>
      _CustomRatingForFeatureDoctorState();
}

class _CustomRatingForFeatureDoctorState
    extends State<CustomRatingForFeatureDoctor> {
  bool isFavorite = false;
  bool isStarred = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.0.w),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: Icon(
              isFavorite
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),

          horizontalSpace(36),

          // Star Icon
          IconButton(
            onPressed: () {
              setState(() {
                isStarred = !isStarred;
              });
            },
            icon: Icon(
              isStarred ? Icons.star_rate_rounded : Icons.star_border_rounded,
              color: isStarred
                  ? AppColors.starCplors
                  : AppColors.nonSelectedStarCplors,
            ),
          ),

          Text(widget.featuredDoctorModel.rating),
        ],
      ),
    );
  }
}
