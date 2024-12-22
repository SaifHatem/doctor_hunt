import 'package:doctor_hunt/features/auth/logic/cubits/auth_cubit.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/auth_state.dart';

import '../../../../core/helpers/app_strings.dart';
import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/custom_snack_bar.dart';
import '../../../../core/widgets/text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_and_register_row_methods.dart';
import 'login_custome_welcome_text.dart';
import 'register_terms.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
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
                errorText: 'Register Successfully',
              ),
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
          );
          Navigator.pop(context);
        } else if (state is SignUpFailure) {
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
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: SingleChildScrollView(
                child: Form(
                  key: context.read<AuthCubit>().signUpFormKey,
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
                        controller: context.read<AuthCubit>().signUpName,
                        hintText: AppStrings.name,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<AuthCubit>().signUpEmail,
                        hintText: AppStrings.email,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<AuthCubit>().signUpPhoneNumber,
                        hintText: AppStrings.phone,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<AuthCubit>().signUpGender,
                        hintText: AppStrings.gender,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<AuthCubit>().signUpPassword,
                        hintText: AppStrings.password,
                        isPasswordField: true,
                      ),
                      verticalSpace(15),
                      AppTextFormField(
                        controller: context.read<AuthCubit>().confirmPassword,
                        hintText: AppStrings.confirmPassword,
                        isPasswordField: true,
                      ),
                      const RegisterTerms(),
                      verticalSpace(32),
                      state is SignUpLoading
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(
                                  AppColors.primaryColor),
                            )
                          : AppTextButton(
                              //verticalPadding: 12.h,
                              buttonText: AppStrings.signUp,
                              textStyle: AppStyles.font18Medium.copyWith(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                              onPressed: () {
                                context.read<AuthCubit>().register();
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
