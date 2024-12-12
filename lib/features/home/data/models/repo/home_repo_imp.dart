import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/core/api/api_consumer.dart';
import 'package:doctor_hunt/core/api/endpoints.dart';
import 'package:doctor_hunt/core/errors/failure.dart';
import 'package:doctor_hunt/features/home/data/models/home_model/home_model.dart';
import 'package:doctor_hunt/features/home/data/models/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiConsumer apiConsumer;

  HomeRepoImp(this.apiConsumer);
  @override
  Future<Either<String, List<DoctorModel>>> fetchPopularDoctors() async {
    try {
      var data = await apiConsumer.get(Endpoints.fetchDoctors);
      List<DoctorModel> doctors = [];

      for (var doctor in data['data']) {
        doctors.add(DoctorModel.fromJson(doctor));
      }
      return right(doctors);
    } on ServerFailure catch (e) {
      return Left(e.errorMessage);
    }
  }
}
