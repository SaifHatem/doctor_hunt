import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/core/api/api_consumer.dart';
import 'package:doctor_hunt/core/api/endpoints.dart';
import 'package:doctor_hunt/core/errors/failure.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_model/all_doctor_model.dart';
import 'package:doctor_hunt/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiConsumer apiConsumer;

  HomeRepoImpl(this.apiConsumer);

  @override
  Future<Either<String, List<AllDoctorsModel>>> fetchPopularDoctors() async {
    try {
      var data = await apiConsumer.get(Endpoints.fetchDoctors);
      List<AllDoctorsModel> doctors = (data['data'] as List)
          .map((doctor) => AllDoctorsModel.fromJson(doctor))
          .toList();
      return right(doctors);
    } on ServerFailure catch (e) {
      return Left(e.errorMessage);
    } catch (e) {
      return Left('An unexpected error occurred: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, Map<String, dynamic>>> fetchFeaturedDoctors() async {
    try {
      var response = await apiConsumer.get(Endpoints.fetchDoctors);
      return right(response);
    } on ServerFailure catch (e) {
      return Left(e.errorMessage);
    } catch (e) {
      return Left('An unexpected error occurred: ${e.toString()}');
    }
  }
}