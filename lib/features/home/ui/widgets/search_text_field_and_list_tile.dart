import '../../../../core/helpers/route_export.dart';

class SearchTextFieldAndListTile extends StatelessWidget {
  const SearchTextFieldAndListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 156.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
            ),
          ),
          child: Center(
            child: ListTile(
              horizontalTitleGap: 0,
              trailing: ClipOval(
                child:
                    // CustomSVGImage(
                    // asset: 'assets/svgs/profile_image.svg',
                    // width: 60.w,
                    // height: 60.h,
                    //)
                    Image.asset(
                  'assets/images/profile_image.png',
                  width: 60.w,
                  height: 60.h,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Hi Handwerker!',
                style: AppStyles.font16Light.copyWith(
                  fontSize: 20.sp,
                  color: const Color(0xffFAFAFA),
                ),
              ),
              subtitle: Text(
                'Find Your Doctor',
                style: AppStyles.font16Light.copyWith(
                  fontSize: 25,
                  color: const Color(0xffFAFAFA),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -25.h,
          left: 20.w,
          right: 20.w,
          child: const AppTextFormField(
            hintText: 'Search...',
            enabledBorderSideColor: Colors.white,
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.greyColor,
            ),
            suffixIcon: Icon(
              Icons.close,
              color: AppColors.greyColor,
            ),
          ),
        ),
      ],
    );
  }
}
