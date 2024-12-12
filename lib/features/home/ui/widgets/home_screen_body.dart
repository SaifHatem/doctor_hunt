import 'package:doctor_hunt/core/helpers/images_strings.dart';
import 'package:doctor_hunt/features/home/logic/cubit/fetch_popular_doctors_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_strings.dart';
import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import 'featured_doctor_list_view.dart';
import 'popular_doctor_list_view.dart';
import 'search_text_field_and_list_tile.dart';
import 'see_all_row.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPopularDoctorsCubit, FetchPopularDoctorsState>(
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImagesStrings.imageScreenBackground),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SearchTextFieldAndListTile(),
                  verticalSpace(54),
                  verticalSpace(30),
                  const SeeAllRow(
                    categoryName: AppStrings.homeViewPopularDoctor,
                  ),
                  verticalSpace(22),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: const PopularDoctorListView(),
                  ),
                  verticalSpace(30),
                  const SeeAllRow(
                    categoryName: AppStrings.homeViewFeatureDoctor,
                  ),
                  verticalSpace(22),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: const FeaturedDoctorListView(),
                  ),
                  verticalSpace(20),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
