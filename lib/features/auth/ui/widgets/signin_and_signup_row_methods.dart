import 'package:doctor_hunt/core/helpers/route_export.dart';

class SigninAndSignupRowMethods extends StatelessWidget {
  const SigninAndSignupRowMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomContainerForFacebookAndGoogle(
          image: 'assets/svgs/google.svg',
          text: 'Google',
        ),
        CustomContainerForFacebookAndGoogle(
          image: 'assets/svgs/facebook.svg',
          text: 'Facebook',
        ),
      ],
    );
  }
}
