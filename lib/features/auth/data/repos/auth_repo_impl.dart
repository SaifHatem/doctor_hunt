import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/core/api/dio_consumer.dart';
import 'package:doctor_hunt/core/api/endpoints.dart';
import 'package:doctor_hunt/core/errors/failure.dart';
import 'package:doctor_hunt/features/auth/data/models/login_model/login_model.dart';
import 'package:doctor_hunt/features/auth/data/models/register_model/register_model.dart';

import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final DioConsumer apiService;

  AuthRepoImpl(this.apiService);

  @override
  Future<Either<String, LoginModel>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiService.post(
        isFromData: true,
        Endpoints.login,
        data: {
          ApiKey.email: email,
          ApiKey.password: password,
        },
      );
      final user = LoginModel.fromJson(response);
      //final decodedToken = JwtDecoder.decode(user.data!.token!);
      // CacheHelper().saveData(key: ApiKey.token, value: user.data!.token!);
      // CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);
      return Right(user);
    } on ServerFailure catch (e) {
      return Left(e.errModel.message!);
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
        isFromData: true,
        data: {
          ApiKey.name: name,
          ApiKey.email: email,
          ApiKey.phone: phone,
          ApiKey.gender: gender,
          ApiKey.password: password,
          ApiKey.password_confirmation: confirmPassword,
        },
      );
      final registerModel = RegisterModel.fromJson(response);
      return Right(registerModel);
    } on ServerFailure catch (e) {
      return Left(e.errModel.message!);
    }
  }
}
