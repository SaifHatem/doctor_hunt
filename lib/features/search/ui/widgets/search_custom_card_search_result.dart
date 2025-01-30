import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import 'search_custom_heart.dart';

class CustomCardSearchResult extends StatelessWidget {
  const CustomCardSearchResult({super.key});
//! TODO: Refactor this file ...
  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 18.0.h),
        child: Column(
          children: [
            _buildDoctorInfo(),
            verticalSpace(20),
            _buildAvailabilityAndButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorInfo() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        'assets/images/doctor.png',
        height: 87.0.h,
        width: 92.0.w,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Dr. Shruti Kediadi',
            style: AppStyles.font18Medium,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          const CustomHeart(),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tooths Dentist',
            style: AppStyles.font13Reguler,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            '7 Years experience',
            style: AppStyles.font12Light,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          verticalSpace(10),
          _buildPatientStories(),
        ],
      ),
    );
  }

  Widget _buildPatientStories() {
    return Row(
      children: [
        CircleAvatar(
          radius: 5.r,
          backgroundColor: AppColors.primaryColor,
        ),
        horizontalSpace(3),
        Text(
          '20%',
          style: AppStyles.font12Light.copyWith(
            fontSize: 11.0.sp,
          ),
        ),
        horizontalSpace(10),
        CircleAvatar(
          radius: 5.r,
          backgroundColor: AppColors.primaryColor,
        ),
        horizontalSpace(3),
        Text(
          '69 Patient Stories',
          style: AppStyles.font12Light.copyWith(
            fontSize: 11.0.sp,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }

  Widget _buildAvailabilityAndButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Next Available ',
              style: AppStyles.font13Reguler.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Text(
                  '10:00 ',
                  style: AppStyles.font12Medium
                      .copyWith(color: AppColors.greyColor),
                ),
                Text(
                  'AM tomorrow',
                  style: AppStyles.font12Light
                      .copyWith(color: AppColors.greyColor),
                ),
              ],
            ),
          ],
        ),
        AppTextButton(
          buttonWidth: 112,
          buttonHeight: 34,
          borderRadius: 4.r,
          buttonText: 'Book',
          textStyle: AppStyles.font12Medium,
          onPressed: () {
            Navigator.pushNamed(context, Routes.selectTimeView);
          },
        ),
      ],
    );
  }
}
