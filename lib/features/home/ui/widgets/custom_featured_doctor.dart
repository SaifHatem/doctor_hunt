import 'package:doctor_hunt/features/home/data/models/all_doctors_model/all_doctor_model.dart';

import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../data/models/featured_doctor_model.dart';
import 'custom_ratin_for_featured_doctor.dart';

class CustomFeaturedDoctorContainer extends StatelessWidget {
  const CustomFeaturedDoctorContainer({
    super.key,
    required this.allDoctorsModel,
  });

  final AllDoctorsModel allDoctorsModel;

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
          const CustomRatingForFeatureDoctor(),
          ClipOval(
            child: Image.network(
              allDoctorsModel.photo!,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(10),
          Text(allDoctorsModel.name!),
          verticalSpace(3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.attach_money_rounded,
                color: AppColors.primaryColor,
              ),
              Text('${allDoctorsModel.appointPrice}\$'),
            ],
          ),
        ],
      ),
    );
  }
}
