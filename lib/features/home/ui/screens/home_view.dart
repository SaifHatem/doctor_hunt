import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/api/dio_consumer.dart';
import 'package:doctor_hunt/features/home/data/models/repo/home_repo_imp.dart';
import 'package:doctor_hunt/features/home/logic/cubit/fetch_popular_doctors_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/route_export.dart';
import '../../../../core/secure/secure_storage_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchPopularDoctorsCubit(
        HomeRepoImp(
          DioConsumer(
            dio: Dio(),
            secureStorageService: SecureStorageService(),
          ),
        ),
      )..fetchPopularDoctors(),
      child: const Scaffold(
        body: SafeArea(
          child: HomeScreenBody(),
        ),
      ),
    );
  }
}
