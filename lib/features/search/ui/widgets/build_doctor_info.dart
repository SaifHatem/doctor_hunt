import 'package:doctor_hunt/features/search/ui/widgets/search_custom_heart.dart';
import 'package:doctor_hunt/features/search/ui/widgets/select_time_custom_starts_rating.dart';

import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';

class DoctorInfoCard extends StatelessWidget {
  final VoidCallback? onTap;

  const DoctorInfoCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 10.0.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/doctor.png',
                height: 87.0.h,
                width: 92.0.w,
              ),
              horizontalSpace(8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Shruti Kediadi',
                      style: AppStyles.font18Medium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      'Upasana Dental Clinic, salt lake',
                      style: AppStyles.font12Light,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SelectTimeCustomStarsRating(),
                  ],
                ),
              ),
              const CustomHeart(),
            ],
          ),
        ),
      ),
    );
  }
}
