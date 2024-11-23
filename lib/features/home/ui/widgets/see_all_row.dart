import '../../../../core/helpers/route_export.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class SeeAllRow extends StatelessWidget {
  const SeeAllRow({
    super.key,
    required this.categoryName,
  });

  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Text(
            categoryName,
            style: AppStyles.font18Medium,
          ),
          const Spacer(),
          Text(
            'See all',
            style: AppStyles.font16Light.copyWith(fontSize: 12),
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 10,
            color: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}
