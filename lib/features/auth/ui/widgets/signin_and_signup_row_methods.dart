import 'package:flutter/material.dart';

import 'custom_container_for_facebook_and_google.dart';

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
