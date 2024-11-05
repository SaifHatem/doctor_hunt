import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/features/auth/data/models/login_model/login_model.dart';
import 'package:doctor_hunt/features/auth/data/models/register_model/register_model.dart';

abstract class AuthRepo {
  Future<Either<String, LoginModel>> signIn({
    required String email,
    required String password,
  });

  Future<Either<String, RegisterModel>> register({
    required String name,
    required String email,
    required String phone,
    required String gender,
    required String password,
    required String confirmPassword,
  });
}
