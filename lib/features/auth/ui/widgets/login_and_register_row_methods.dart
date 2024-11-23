import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import 'custom_container_for_facebook_and_google.dart';

class LoginAndRegisterRowMethods extends StatelessWidget {
  const LoginAndRegisterRowMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Expanded(
          child: CustomContainerForFacebookAndGoogle(
            image: 'assets/svgs/google.svg',
            text: 'Google',
          ),
        ),
        horizontalSpace(15),
        const Expanded(
          child: CustomContainerForFacebookAndGoogle(
            image: 'assets/svgs/facebook.svg',
            text: 'Facebook',
          ),
        ),
      ],
    );
  }
}
