import 'package:doctor_hunt/core/helpers/route_export.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

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
                  verticalPadding: 10.h,
                  buttonText: AppStrings.signUp,
                  textStyle: AppStyles.font18Medium.copyWith(
                    color: Colors.white,
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
