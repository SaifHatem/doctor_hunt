import 'package:doctor_hunt/core/helpers/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';

class SigninCustomWelcomeTxt extends StatelessWidget {
  const SigninCustomWelcomeTxt({
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
