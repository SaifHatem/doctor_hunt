import 'package:dartz/dartz.dart';
import '../models/login_model/login_model.dart';
import '../models/register_model/register_model.dart';

abstract class AuthRepo {
  Future<Either<String, LoginModel>> login({
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
