import 'package:doctor_hunt/core/di/service_locator.dart';
import 'package:doctor_hunt/features/home/data/repo/home_repo_imp.dart';
import 'package:doctor_hunt/features/home/logic/cubit/featured_doctors_cubit.dart';
import 'package:doctor_hunt/features/home/logic/popular_doctors_cubit/fetch_popular_doctors_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/route_export.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchPopularDoctorsCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchPopularDoctors(),
        ),

        //! Not Used
        BlocProvider(
          create: (context) => FeaturedDoctorsCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: const Scaffold(
        body: SafeArea(
          child: HomeScreenBody(),
        ),
      ),
    );
  }
}
