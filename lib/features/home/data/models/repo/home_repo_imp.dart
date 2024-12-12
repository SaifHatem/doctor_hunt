import 'package:dartz/dartz.dart';
import 'package:doctor_hunt/core/api/api_consumer.dart';
import 'package:doctor_hunt/core/api/endpoints.dart';
import 'package:doctor_hunt/core/errors/failure.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_model/all_doctor_model.dart';
import 'package:doctor_hunt/features/home/data/models/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final ApiConsumer apiConsumer;

  HomeRepoImp(this.apiConsumer);
  @override
  Future<Either<String, List<AllDoctorsModel>>> fetchPopularDoctors() async {
    try {
      var data = await apiConsumer.get(Endpoints.fetchDoctors);
      List<AllDoctorsModel> doctors = [];

      for (var doctor in data['data']) {
        doctors.add(AllDoctorsModel.fromJson(doctor));
      }
      return right(doctors);
    } on ServerFailure catch (e) {
      return Left(e.errorMessage);
    }
  }

// @override
// Future<Either<String, List<AllDoctorModel>>> fetchPopularDoctors() async {
//   try {
//     // Fetch data from the API
//     var response = await apiConsumer.get(Endpoints.fetchDoctors);

//     // Initialize an empty list to hold doctors
//     List<AllDoctorModel> doctors = [];

//     // Loop through each specialization in the data array
//     for (var specialization in response['data']) {
//       // Extract doctors within the specialization
//       for (var doctor in specialization['doctors']) {
//         doctors.add(AllDoctorModel.fromJson(doctor));
//       }
//     }

//     return Right(doctors); // Return the list of doctors
//   } on ServerFailure catch (e) {
//     return Left(e.errorMessage); // Handle errors
//   }
// }
}
