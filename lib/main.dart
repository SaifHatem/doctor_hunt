import 'dart:developer';

import 'package:doctor_hunt/core/di/service_locator.dart';
import 'package:doctor_hunt/core/helpers/route_export.dart';
import 'package:doctor_hunt/core/routing/app_router.dart';
import 'package:doctor_hunt/doctor_app.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/auth_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'features/auth/data/repos/auth_repo_impl.dart';
import 'global_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  Bloc.observer = GlobalBlocObserver();

  await _initializeSecureStorage();
  await ScreenUtil.ensureScreenSize();

  runApp(
    BlocProvider(
      create: (context) => AuthCubit(getIt.get<AuthRepoImpl>()),
      child: DoctorHunt(appRouter: AppRouter()),
    ),
  );
}

Future<void> _initializeSecureStorage() async {
  try {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: true,
        );
    final storage = FlutterSecureStorage(aOptions: getAndroidOptions());
    //! You can use `storage` here if needed for any initialization.
  } catch (e) {
    //! Handle any potential errors during secure storage initialization
    if (kDebugMode) {
      log('Error initializing secure storage: $e');
    }
  }
}
