import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/core/secure/secure_storage_service.dart';
import '../../../../core/api/dio_consumer.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/errors/failure.dart';
import '../models/login_model/login_model.dart';
import '../models/register_model/register_model.dart';
import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final DioConsumer apiService;
  final SecureStorageService secureStorageService;

  AuthRepoImpl(
    this.apiService,
    this.secureStorageService,
  );

  @override
  Future<Either<String, LoginModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await apiService.post(
        Endpoints.login,
        data: {
          ApiKey.email: email,
          ApiKey.password: password,
        },
      );
      final user = LoginModel.fromJson(response);
      // Store the token securely using SecureStorageService
      await secureStorageService.setValue(ApiKey.token, user.data!.token ?? "");
      return Right(user);
    } on ServerFailure catch (e) {
      return Left(e.errorMessage);
    }
  }

  @override
  Future<Either<String, RegisterModel>> register({
    required String name,
    required String email,
    required String phone,
    required String gender,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final response = await apiService.post(
        Endpoints.register,
        data: {
          ApiKey.name: name,
          ApiKey.email: email,
          ApiKey.phone: phone,
          ApiKey.gender: gender,
          ApiKey.password: password,
          ApiKey.passwordConfirmation: confirmPassword,
        },
      );
      final registerModel = RegisterModel.fromJson(response);

      // Store the token securely (if token is provided after registration)
      if (registerModel.data!.token != null) {
        await secureStorageService.setValue(
            ApiKey.token, registerModel.data!.token!);
      }

      return Right(registerModel);
    } on ServerFailure catch (e) {
      return Left(e.errorMessage);
    }
  }
}
