import '../../../../core/helpers/route_export.dart';
import '../../logic/cubits/user_cubit.dart';
import '../../logic/cubits/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Success')),
          );
        } else if (state is SignInFailure) {
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
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              child: SingleChildScrollView(
                child: Form(
                  key: context.read<UserCubit>().signInFormKey,
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
                        controller: context.read<UserCubit>().signInEmail,
                        hintText: AppStrings.email,
                        isPasswordField: false,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<UserCubit>().signInPassword,
                        hintText: AppStrings.password,
                        isPasswordField: true,
                      ),
                      verticalSpace(32),
                      state is SignInLoading
                          ? const CircularProgressIndicator()
                          : AppTextButton(
                              //verticalPadding: 10.h,
                              buttonText: AppStrings.login,
                              textStyle: AppStyles.font18Medium.copyWith(
                                color: Colors.white,
                              ),
                              onPressed: () {
                                context.read<UserCubit>().signIn();
                                // Navigator.pushNamed(
                                //     context, Routes.bottomNavigationScreen);
                              },
                            ),
                      verticalSpace(27),
                      Text(
                        AppStrings.forgetPassword,
                        style: AppStyles.font14Medium.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w400),
                      ),
                      verticalSpace(40),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.signupScreen);
                        },
                        child: Text(
                          AppStrings.dontHaveAccount,
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
