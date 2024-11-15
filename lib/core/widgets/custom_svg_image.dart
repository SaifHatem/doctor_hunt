import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSVGImage extends StatelessWidget {
  const CustomSVGImage({
    super.key,
    required this.asset,
    this.matchTextDirection = true,
    this.color,
    this.fit = BoxFit.contain,
    this.onTap,
    this.width,
    this.height,
  });
  final double? width;
  final double? height;
  final String asset;
  final void Function()? onTap;
  final Color? color;
  final BoxFit fit;
  final bool matchTextDirection;

  @override
  Widget build(BuildContext context) {
    if (asset.contains("http")) {
      return SvgPicture.network(
        asset,
        fit: BoxFit.fill,
        matchTextDirection: matchTextDirection,
        // ignore: deprecated_member_use
        color: color,
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        width: width ?? 0,
        height: height ?? 0,
        asset,

        // ignore:deprecated_member_use
        color: color,
        fit: fit,
        matchTextDirection: matchTextDirection,
      ),
    );
  }
}
