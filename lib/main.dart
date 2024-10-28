import 'package:doctor_hunt/core/routing/app_router.dart';
import 'package:doctor_hunt/doctor_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    DoctorHunt(
      appRouter: AppRouter(),
    ),

    // DevicePreview(
    //   builder: (context) => DoctorHunt(
    //     appRouter: AppRouter(),
    //   ),
    //   enabled: !kReleaseMode,
    // ),
  );
}
