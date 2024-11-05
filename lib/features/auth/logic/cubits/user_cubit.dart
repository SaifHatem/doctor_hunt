import 'package:doctor_hunt/features/auth/data/repos/auth_repo.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.authRepo) : super(UserInitial());

  final AuthRepo authRepo;

  //final ApiConsumer api;
  //Sign in Form key
  GlobalKey<FormState> signInFormKey = GlobalKey();
  //Sign in email
  TextEditingController signInEmail = TextEditingController();
  //Sign in password
  TextEditingController signInPassword = TextEditingController();
  //Sign Up Form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  //Sign up name
  TextEditingController signUpName = TextEditingController();
  //Sign up phone number
  TextEditingController signUpPhoneNumber = TextEditingController();
  //Sign up email
  TextEditingController signUpEmail = TextEditingController();
  //Sign up gender
  TextEditingController signUpGender = TextEditingController();
  //Sign up password
  TextEditingController signUpPassword = TextEditingController();
  //Sign up confirm password
  TextEditingController confirmPassword = TextEditingController();

  register() async {
    emit(SignUpLoading());
    final response = await authRepo.register(
      name: signUpName.text,
      email: signUpEmail.text,
      phone: signUpPhoneNumber.text,
      gender: signUpGender.text,
      password: signUpPassword.text,
      confirmPassword: confirmPassword.text,
    );
    response.fold(
      (errMessage) => emit(SignUpFailure(errorMessage: errMessage)),
      (signUpModel) =>
          emit(SignUpSuccess(message: 'Created account succesfully')),
    );
  }

  signIn() async {
    emit(SignInLoading());
    final response = await authRepo.signIn(
      email: signInEmail.text,
      password: signInPassword.text,
    );
    response.fold(
      (errMessage) => emit(SignInFailure(errorMessage: errMessage)),
      (signInModel) => emit(SignInSuccess()),
    );
  }

  // signup() async {
  //   try {
  //     emit(SignUpLoading());
  //     final response =
  //         await api.post(Endpoints.register, isFromData: true, data: {
  //       ApiKey.name = signUpName.text,
  //       ApiKey.email = signUpEmail.text,
  //       ApiKey.name = signUpName.text,
  //       ApiKey.phone = signUpPhoneNumber.text,
  //       ApiKey.gender = signUpGender.text,
  //       ApiKey.password = signUpPassword.text,
  //       ApiKey.password_confirmation = confirmPassword.text,
  //     });
  //     emit(SignUpSuccess(message: "Created Successfully"));
  //   } on ServerException catch (e) {
  //     emit(SignUpFailure(
  //         errorMessage:
  //             e.errModel.message ?? 'An unexpected error occurredddd'));
  //   }
  // }
  // getUserProfile() async {
  //   final result = await authRepo.getUserProfile();
  //   result.fold((failure) => GetUserFailure(errorMessage: failure.errMessage),
  //       (user) => GetUserSuccess(userModel: user));
  // }
}
