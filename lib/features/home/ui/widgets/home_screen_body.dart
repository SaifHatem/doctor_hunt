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
              //! TODO: Add Assets IN Asset File
              image: AssetImage('assets/images/screen_background.png'),
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
                //! Nice Refactored Row 
                categoryName: 'Popular Doctor',
              ),
              verticalSpace(22),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: PopularDoctorListView(),
              ),
              verticalSpace(30),
              const SeeAllRow(
                //! TODO: Add Strings In Strings File
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
