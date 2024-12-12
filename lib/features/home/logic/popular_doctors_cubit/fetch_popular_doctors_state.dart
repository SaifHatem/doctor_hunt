part of 'fetch_popular_doctors_cubit.dart';

sealed class FetchPopularDoctorsState extends Equatable {
  const FetchPopularDoctorsState();

  @override
  List<Object> get props => [];
}

final class FetchPopularDoctorsInitial extends FetchPopularDoctorsState {}

final class FetchPopularDoctorsLoading extends FetchPopularDoctorsState {}

final class FetchPopularDoctorsSuccess extends FetchPopularDoctorsState {
  final List<AllDoctorsModel> doctors;

  const FetchPopularDoctorsSuccess(this.doctors);
}

final class FetchPopularDoctorsError extends FetchPopularDoctorsState {
  final String errorMessage;

  const FetchPopularDoctorsError(this.errorMessage);
}
