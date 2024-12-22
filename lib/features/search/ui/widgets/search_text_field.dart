import 'package:doctor_hunt/core/helpers/route_export.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';

import '../../../../core/theming/app_colors.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppTextFormField(
      hintText: 'Search...',
      enabledBorderSideColor: Colors.white,
      prefixIcon: Icon(
        Icons.search,
        color: AppColors.greyColor,
      ),
      suffixIcon: Icon(
        Icons.close,
        color: AppColors.greyColor,
      ),
    );
  }
}
