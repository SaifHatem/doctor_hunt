import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/route_export.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.appBarTitle,
  });

  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: SvgPicture.asset('assets/svgs/backArrow.svg'),
          onTap: () => Navigator.pop(context),
        ),
        horizontalSpace(20),
        Expanded(
          child: Text(
            appBarTitle,
            style: AppStyles.font18Reguler,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
