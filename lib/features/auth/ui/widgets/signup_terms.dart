import 'package:doctor_hunt/core/helpers/route_export.dart';

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
          AppStrings.iAgreeWithTerms,
          style: AppStyles.font14Medium
              .copyWith(fontWeight: FontWeight.w400, fontSize: 12.sp),
        ),
      ],
    );
  }
}
