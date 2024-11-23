import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/models/featured_doctor_model.dart';
import 'custom_ratin_for_featured_doctor.dart';

class CustomFeaturedDoctorContainer extends StatelessWidget {
  const CustomFeaturedDoctorContainer({
    super.key,
    required this.featuredDoctorModel,
  });

  final FeaturedDoctorModel featuredDoctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteWithOpacity,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          CustomRatingForFeatureDoctor(
              featuredDoctorModel: featuredDoctorModel),
          ClipOval(
            child: Image.asset(
              featuredDoctorModel.doctorImage,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(10),
          Text(featuredDoctorModel.doctorName),
          verticalSpace(3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.attach_money_rounded,
                color: AppColors.primaryColor,
              ),
              Text(featuredDoctorModel.price),
            ],
          ),
        ],
      ),
    );
  }
}
