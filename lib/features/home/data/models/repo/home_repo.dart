import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/features/home/data/models/home_model/home_model.dart';

abstract class HomeRepo {
  Future<Either<String, List<DoctorModel>>> fetchPopularDoctors();
}
