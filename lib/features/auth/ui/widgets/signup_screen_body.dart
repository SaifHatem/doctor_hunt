import 'package:doctor_hunt/core/helpers/route_export.dart';

class SignupScreenBody extends StatelessWidget {
  const SignupScreenBody({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
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
                  hintText: AppStrings.name,
                ),
                verticalSpace(15),
                const AppTextFormField(
                  hintText: AppStrings.email,
                ),
                verticalSpace(15),
                const AppTextFormField(
                  hintText: AppStrings.password,
                  isPasswordField: true,
                ),
                const SignupTerms(),
                verticalSpace(32),
                AppTextButton(
                  verticalPadding: 12.h,
                  buttonText: AppStrings.signUp,
                  textStyle: AppStyles.font18Medium.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  onPressed: () {},
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
      ],
    );
  }
}
