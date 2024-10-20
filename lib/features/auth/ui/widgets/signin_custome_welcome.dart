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
          'Welcome Backs',
          style: AppStyles.font24Medium,
        ),
        verticalSpace(20),
        Text(
          'You can search course, apply course and find scholarship for abroad studies',
          style: AppStyles.font14Medium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
