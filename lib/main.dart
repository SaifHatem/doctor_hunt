import 'package:device_preview/device_preview.dart';
import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/api/dio_consumer.dart';
import 'package:doctor_hunt/core/cache/cache_helper.dart';
import 'package:doctor_hunt/core/routing/app_router.dart';
import 'package:doctor_hunt/doctor_app.dart';
import 'package:doctor_hunt/features/auth/data/repos/auth_repo_impl.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/user_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  await ScreenUtil.ensureScreenSize();
  runApp(
    // DoctorHunt(
    //   appRouter: AppRouter(),
    // ),

    DevicePreview(
      builder: (context) => BlocProvider(
        create: (context) => UserCubit(AuthRepoImpl(DioConsumer(dio: Dio()))),
        child: DoctorHunt(
          appRouter: AppRouter(),
        ),
      ),
      enabled: !kReleaseMode,
    ),
  );
}
