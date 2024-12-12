import 'package:bloc/bloc.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_model/all_doctor_model.dart';
import 'package:doctor_hunt/features/home/data/models/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetch_popular_doctors_state.dart';

class FetchPopularDoctorsCubit extends Cubit<FetchPopularDoctorsState> {
  FetchPopularDoctorsCubit(
    this.homeRepo,
  ) : super(FetchPopularDoctorsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchPopularDoctors() async {
    emit(FetchPopularDoctorsLoading());
    final result = await homeRepo.fetchPopularDoctors();
    result.fold((failure) => emit(FetchPopularDoctorsError(failure)),
        (doctors) => emit(FetchPopularDoctorsSuccess(doctors)));
  }
}
