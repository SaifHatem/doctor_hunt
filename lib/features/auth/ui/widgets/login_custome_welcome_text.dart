import '../../../../core/helpers/route_export.dart';

class LoginCustomWelcomeText extends StatelessWidget {
  const LoginCustomWelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.signinWelcomeBacks,
          style: AppStyles.font24Medium,
        ),
        verticalSpace(20),
        Text(
          AppStrings.authYouCanSearch,
          style: AppStyles.font14Medium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
