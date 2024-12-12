import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_model/all_doctor_model.dart';

abstract class HomeRepo {
  Future<Either<String, List<AllDoctorsModel>>> fetchPopularDoctors();
  Future<Either<String, Map<String, dynamic>>> fetchFeaturedDoctors();
}
