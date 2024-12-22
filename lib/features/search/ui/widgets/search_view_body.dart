import 'package:doctor_hunt/core/helpers/route_export.dart';
import 'package:doctor_hunt/core/helpers/spacing.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import 'search_result_list_view.dart';
import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackground(),
        Padding(
          padding: EdgeInsets.only(right: 20.0.w, left: 20.0.w, top: 40.0.h),
          child: Column(
            children: [
              const CustomAppbar(
                appBarTitle: 'Find Doctors',
              ),
              verticalSpace(20),
              const SearchTextfield(),
              verticalSpace(20),
              const Expanded(
                child: SearchResultListView(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
