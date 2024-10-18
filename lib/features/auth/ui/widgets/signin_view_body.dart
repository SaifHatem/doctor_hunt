import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/text_form_field.dart';
import 'signin_and_signup_row_methods.dart';
import 'signin_custome_welcome.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(127),
                const SigninCustomWelcomeTxt(),
                verticalSpace(124),
                const SigninAndSignupRowMethods(),
                verticalSpace(37),
                const AppTextFormField(
                  hintText: 'email',
                ),
                verticalSpace(15),
                const AppTextFormField(
                  hintText: 'password',
                  isPasswordField: true,
                ),
                verticalSpace(32),
                AppTextButton(
                  buttonText: 'Login',
                  textStyle: AppStyles.font18Medium.copyWith(
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                verticalSpace(27),
                Text(
                  'Forget Password',
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
                    'Don\'t have an account? Join us',
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
      ],
    );
  }
}
