import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomListWithDivider extends StatelessWidget {
  final List<String> items;

  const CustomListWithDivider({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => Column(
          children: [
            Row(
              children: [
                Text(
                  '${index + 1}. ',
                  style: AppStyles.font14Medium.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                Expanded(
                  child: Text(
                    items[index],
                    style: AppStyles.font13Reguler.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                ),
              ],
            ),
            if (index != items.length - 1) const Divider(),
          ],
        ),
      ),
    );
  }
}
