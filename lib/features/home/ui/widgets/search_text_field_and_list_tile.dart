import 'package:doctor_hunt/core/routing/routes.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/route_export.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/text_form_field.dart';

class SearchTextFieldAndListTile extends StatelessWidget {
  const SearchTextFieldAndListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: context.read<AuthCubit>().getSavedUsername(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Close the AuthCubit after retrieving the username
          context.read<AuthCubit>().close();
        }

        final username = snapshot.data ?? 'Unknown User';

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
                    child: Image.asset(
                      'assets/images/profile_image.png',
                      width: 60.w,
                      height: 60.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    'Hi $username!',
                    style: AppStyles.font16Light.copyWith(
                      fontSize: 20.sp,
                      color: const Color(0xffFAFAFA),
                    ),
                  ),
                  subtitle: Text(
                    'Find Your Doctor',
                    style: AppStyles.font16Light.copyWith(
                      fontSize: 25,
                      color: AppColors.nonSelectedStarCplors,
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
              child: AppTextFormField(
                hintText: 'Search...',
                enabledBorderSideColor: Colors.white,
                prefixIcon: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.searchView);
                  },
                  child: const Icon(
                    Icons.search,
                    color: AppColors.greyColor,
                  ),
                ),
                suffixIcon: const Icon(
                  Icons.close,
                  color: AppColors.greyColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
