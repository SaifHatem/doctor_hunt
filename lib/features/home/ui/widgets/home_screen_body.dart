import 'package:doctor_hunt/core/helpers/route_export.dart';
import 'package:doctor_hunt/features/home/ui/widgets/featured_doctor_list_view.dart';
import 'package:doctor_hunt/features/home/ui/widgets/popular_doctor_list_view.dart';
import 'package:doctor_hunt/features/home/ui/widgets/see_all_row.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/screen_background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 156.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
              ),
              verticalSpace(54),
              verticalSpace(30),
              const SeeAllRow(
                categoryName: 'Popular Doctor',
              ),
              verticalSpace(22),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: PopularDoctorListView(),
              ),
              verticalSpace(30),
              const SeeAllRow(
                categoryName: 'Feature Doctor',
              ),
              verticalSpace(22),
              FeaturedDoctorListView(),
              verticalSpace(20),
            ],
          ),
        ),
      ],
    );
  }
}
