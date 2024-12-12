part of 'featured_doctors_cubit.dart';

sealed class FeaturedDoctorsState extends Equatable {
  const FeaturedDoctorsState();

  @override
  List<Object> get props => [];
}

final class FeaturedDoctorsInitial extends FeaturedDoctorsState {}

final class FeaturedDoctorsLoading extends FeaturedDoctorsState {}

final class FeaturedDoctorsSuccess extends FeaturedDoctorsState {
  final Map<String, dynamic> response;

  const FeaturedDoctorsSuccess(this.response);
}

final class FeaturedDoctorsError extends FeaturedDoctorsState {
  final String errorMessage;

  const FeaturedDoctorsError(this.errorMessage);
}
