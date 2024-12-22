class AuthState {}

final class UserInitial extends AuthState {}

final class UploadProfilePicture extends AuthState {}

final class SignInSuccess extends AuthState {}

final class SignInLoading extends AuthState {}

final class SignInFailure extends AuthState {
  final String errorMessage;

  SignInFailure({required this.errorMessage});
}

final class SignUpSuccess extends AuthState {
  final String message;

  SignUpSuccess({required this.message});
}

final class SignUpLoading extends AuthState {}

final class SignUpFailure extends AuthState {
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
}
