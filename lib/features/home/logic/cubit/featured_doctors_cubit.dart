import 'package:bloc/bloc.dart';
import 'package:doctor_hunt/features/home/data/models/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_doctors_state.dart';

class FeaturedDoctorsCubit extends Cubit<FeaturedDoctorsState> {
  FeaturedDoctorsCubit(this.homeRepo) : super(FeaturedDoctorsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSpecializedDoctors() async {
    emit(FeaturedDoctorsLoading());
    final result = await homeRepo.fetchFeaturedDoctors();
    result.fold((failure) => emit(FeaturedDoctorsError(failure)),
        (response) => emit(FeaturedDoctorsSuccess(response)));
  }
}
