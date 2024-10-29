import 'package:doctor_hunt/core/helpers/route_export.dart';
import 'package:doctor_hunt/features/home/ui/widgets/popular_doctor_list_view.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Text(
                      'Popular Doctor',
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
              ),
              verticalSpace(22),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: PopularDoctorListView(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
