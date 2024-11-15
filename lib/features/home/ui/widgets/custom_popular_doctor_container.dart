import '../../../../core/helpers/route_export.dart';
import '../../data/models/popular_doctor_model.dart';

class CustomPopularDoctorContainer extends StatelessWidget {
  const CustomPopularDoctorContainer({
    super.key,
    required this.popularDoctorModel,
  });

  final PopularDoctorModel popularDoctorModel;

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
          Image.asset(
            popularDoctorModel.doctorImage,
            height: 180.h,
            width: 190.w,
          ),
          verticalSpace(14),
          Text(
            popularDoctorModel.doctorName,
            style: AppStyles.font18Medium,
          ),
          verticalSpace(2),
          Text(
            popularDoctorModel.doctorMajor,
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
