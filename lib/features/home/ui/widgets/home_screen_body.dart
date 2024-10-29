import 'package:doctor_hunt/core/helpers/route_export.dart';

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SearchTextField(),
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
              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: FeaturedDoctorListView(),
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ],
    );
  }
}
