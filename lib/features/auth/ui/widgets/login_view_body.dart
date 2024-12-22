import 'package:doctor_hunt/features/auth/logic/cubits/auth_cubit.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/auth_state.dart';

import '../../../../core/helpers/app_strings.dart';
import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/custom_snack_bar.dart';
import '../../../../core/widgets/text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_and_register_row_methods.dart';
import 'login_custome_welcome_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: CustomSnackBar(
                icon: Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                  size: 24,
                ),
                topSvgColor: Color.fromARGB(255, 19, 128, 64),
                bottomSvgColor: Color.fromARGB(255, 19, 128, 64),
                containerColor: AppColors.primaryColor,
                title: 'Great!',
                errorText: 'Login Successfully',
              ),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          );
          Navigator.pushNamed(context, Routes.homeview);
        } else if (state is SignInFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: CustomSnackBar(
                icon: const Icon(
                  Icons.close_rounded,
                  color: Colors.white,
                  size: 20,
                ),
                topSvgColor: const Color(0xff801336),
                bottomSvgColor: const Color(0xff801336),
                containerColor: const Color(0xffc72c41),
                title: 'Error!',
                errorText: state.errorMessage,
              ),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              elevation: 0,
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
                  key: context.read<AuthCubit>().signInFormKey,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      verticalSpace(127),
                      const LoginCustomWelcomeText(),
                      verticalSpace(124),
                      const LoginAndRegisterRowMethods(),
                      verticalSpace(37),
                      AppTextFormField(
                        controller: context.read<AuthCubit>().signInEmail,
                        hintText: AppStrings.email,
                        isPasswordField: false,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<AuthCubit>().signInPassword,
                        hintText: AppStrings.password,
                        isPasswordField: true,
                      ),
                      verticalSpace(32),
                      state is SignInLoading
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(
                                  AppColors.primaryColor),
                            )
                          : AppTextButton(
                              //verticalPadding: 10.h,
                              buttonText: AppStrings.login,
                              textStyle: AppStyles.font18Medium.copyWith(
                                color: Colors.white,
                              ),
                              onPressed: () {
                                context.read<AuthCubit>().signIn();
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
                          Navigator.pushNamed(context, Routes.signupView);
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
