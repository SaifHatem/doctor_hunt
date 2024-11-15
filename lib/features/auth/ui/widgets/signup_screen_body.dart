import '../../../../core/helpers/route_export.dart';
import '../../logic/cubits/user_cubit.dart';
import '../../logic/cubits/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Register Success'),
            ),
          );
          Navigator.pop(context);
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/screen_background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: SingleChildScrollView(
                child: Form(
                  key: context.read<UserCubit>().signUpFormKey,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      verticalSpace(127),
                      const SigninCustomWelcomeTxt(),
                      verticalSpace(124),
                      const SigninAndSignupRowMethods(),
                      verticalSpace(37),
                      AppTextFormField(
                        controller: context.read<UserCubit>().signUpName,
                        hintText: AppStrings.name,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<UserCubit>().signUpEmail,
                        hintText: AppStrings.email,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<UserCubit>().signUpPhoneNumber,
                        hintText: AppStrings.phone,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<UserCubit>().signUpGender,
                        hintText: AppStrings.gender,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<UserCubit>().signUpPassword,
                        hintText: AppStrings.password,
                        isPasswordField: true,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<UserCubit>().confirmPassword,
                        hintText: AppStrings.confirmPassword,
                        isPasswordField: true,
                      ),
                      const SignupTerms(),
                      verticalSpace(32),
                      state is SignUpLoading
                          ? const CircularProgressIndicator()
                          : AppTextButton(
                              //verticalPadding: 12.h,
                              buttonText: AppStrings.signUp,
                              textStyle: AppStyles.font18Medium.copyWith(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              onPressed: () {
                                context.read<UserCubit>().register();
                              },
                            ),
                      verticalSpace(27),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          AppStrings.alreadyHaveAccount,
                          style: AppStyles.font14Medium.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      verticalSpace(16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
