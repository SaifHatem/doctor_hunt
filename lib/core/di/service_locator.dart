import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/api/dio_consumer.dart';
import 'package:doctor_hunt/core/secure/secure_storage_service.dart';
import 'package:doctor_hunt/features/auth/data/repos/auth_repo_impl.dart';
import 'package:doctor_hunt/features/home/data/models/repo/home_repo_imp.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<DioConsumer>(
    DioConsumer(
      dio: Dio(),
      secureStorageService: SecureStorageService(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<DioConsumer>(),
    ),
  );

  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(
      getIt.get<DioConsumer>(),
      SecureStorageService(),
    ),
  );
}
