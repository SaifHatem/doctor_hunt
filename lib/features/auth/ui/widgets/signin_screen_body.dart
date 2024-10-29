import 'package:doctor_hunt/core/helpers/route_export.dart';

class SigninScreenBody extends StatelessWidget {
  const SigninScreenBody({
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
        // const Positioned.fill(
        //   child: CustomSVGImage(
        //     asset: 'assets/svgs/app_background.svg',
        //     fit: BoxFit.cover,
        //   ),
        // ),
        // Container(
        //   child: SvgPicture.asset(
        //     'assets/svgs/app_background.svg',
        //     fit: BoxFit.cover,
        //   ),
        // ),
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
                  hintText: AppStrings.email,
                ),
                verticalSpace(15),
                const AppTextFormField(
                  hintText: AppStrings.password,
                  isPasswordField: true,
                ),
                verticalSpace(32),
                AppTextButton(
                  verticalPadding: 10.h,
                  buttonText: AppStrings.login,
                  textStyle: AppStyles.font18Medium.copyWith(
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.bottomNavigationScreen);
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
      ],
    );
  }
}
