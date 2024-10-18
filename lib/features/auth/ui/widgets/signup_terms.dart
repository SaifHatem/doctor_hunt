import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import 'custom_checkbox.dart';

class SignupTerms extends StatelessWidget {
  const SignupTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CustomCheckBox(),
        Text(
          'I agree with the Terms of Service & Privacy Policy',
          style: AppStyles.font14Medium
              .copyWith(fontWeight: FontWeight.w400, fontSize: 12.sp),
        ),
      ],
    );
  }
}
