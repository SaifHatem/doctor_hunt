import 'package:doctor_hunt/features/home/data/models/all_doctors_model/all_doctor_model.dart';
import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';
import 'star_rating.dart';

class CustomPopularDoctorContainer extends StatelessWidget {
  const CustomPopularDoctorContainer({
    super.key,
    required this.allDoctorModel,
  });

  final AllDoctorsModel allDoctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(1),
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
          Image.network(
            allDoctorModel.photo ?? 'https://example.com/placeholder.png',
            height: 180.h,
            width: 190.w,
            errorBuilder: (context, error, stackTrace) {
              return Image.network('https://example.com/placeholder.png'); // Placeholder for error
            },
          ),
          verticalSpace(14),
          Text(
            allDoctorModel.name ?? 'Unknown Doctor',
            style: AppStyles.font18Medium,
          ),
          verticalSpace(2),
          Text(
            allDoctorModel.specialization?.name ?? 'Unknown Specialization',
            style: AppStyles.font16Light.copyWith(
              fontSize: 12,
            ),
          ),
          verticalSpace(6),
          const StarRating(),
        ],
      ),
    );
  }
}