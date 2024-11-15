import 'package:dio/dio.dart';
import 'core/api/dio_consumer.dart';
import 'core/cache/cache_helper.dart';
import 'core/routing/app_router.dart';
import 'doctor_app.dart';
import 'features/auth/data/repos/auth_repo_impl.dart';
import 'features/auth/logic/cubits/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  await ScreenUtil.ensureScreenSize();
  runApp(
    BlocProvider(
      create: (context) => UserCubit(AuthRepoImpl(DioConsumer(dio: Dio()))),
      child: DoctorHunt(
        appRouter: AppRouter(),
      ),
    ),
    // DevicePreview(
    //   builder: (context) => BlocProvider(
    //     create: (context) => UserCubit(AuthRepoImpl(DioConsumer(dio: Dio()))),
    //     child: DoctorHunt(
    //       appRouter: AppRouter(),
    //     ),
    //   ),
    //   enabled: !kReleaseMode,
    // ),
  );
}
