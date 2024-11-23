import '../../../../core/helpers/route_export.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/custom_svg_image.dart';

class CustomContainerForFacebookAndGoogle extends StatelessWidget {
  const CustomContainerForFacebookAndGoogle({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white.withOpacity(.9),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Optional: shadow effect
            offset: const Offset(0, 4), // Shadow position
            blurRadius: 8, // Shadow blur radius
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomSVGImage(
              asset: image,
              width: 18.17.w,
              height: 18.17.h,
            ),
            Text(
              text,
              style: AppStyles.font16Light,
            )
          ],
        ),
      ),
    );
  }
}
