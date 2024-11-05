class UserState {}

final class UserInitial extends UserState {}

final class UploadProfilePicture extends UserState {}

final class SignInSuccess extends UserState {}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errorMessage;

  SignInFailure({required this.errorMessage});
}

final class SignUpSuccess extends UserState {
  final String message;

  SignUpSuccess({required this.message});
}

final class SignUpLoading extends UserState {}

final class SignUpFailure extends UserState {
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
}

// final class GetUserSuccess extends UserState {
//   final UserModel userModel;

//   GetUserSuccess({required this.userModel});
// }

// final class GetUserLoading extends UserState {}

// final class GetUserFailure extends UserState {
//   final String errorMessage;

//   GetUserFailure({required this.errorMessage});
// }
