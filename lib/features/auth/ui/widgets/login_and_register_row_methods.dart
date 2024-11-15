import '../../../../core/helpers/route_export.dart';

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
