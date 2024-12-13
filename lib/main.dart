import 'package:doctor_hunt/core/di/service_locator.dart';
import 'package:doctor_hunt/core/helpers/route_export.dart';
import 'package:doctor_hunt/core/routing/app_router.dart';
import 'package:doctor_hunt/doctor_app.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'features/auth/data/repos/auth_repo_impl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  AndroidOptions getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  // ignore: unused_local_variable
  final storage = FlutterSecureStorage(aOptions: getAndroidOptions());

  await ScreenUtil.ensureScreenSize();

  runApp(
    BlocProvider(
      create: (context) => UserCubit(
        getIt.get<AuthRepoImpl>(),
      ),
      child: DoctorHunt(
        appRouter: AppRouter(),
      ),
    ),
    // DevicePreview(
    //   builder: (context) => BlocProvider(
    //     create: (context) => UserCubit(
    //       AuthRepoImpl(
    //         DioConsumer(
    //           dio: Dio(),
    //         ),
    //         secureStorageService,
    //       ),
    //     ),
    //     child: DoctorHunt(
    //       appRouter: AppRouter(),
    //     ),
    //   ),
    //   enabled: !kReleaseMode,
    // ),
  );
}
