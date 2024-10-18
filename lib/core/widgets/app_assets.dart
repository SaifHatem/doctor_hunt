mixin PngAssets {
  static const String pngAssets = "assets/image/";
}

mixin SvgAssets {
  static const String svgAssets = "assets/svg/";
}

mixin VideoAssets {
  static const String videoAssets = "assets/videos/";
}

class AppAssets with PngAssets, SvgAssets, VideoAssets {
  // Image PNG
//   static const String adsImage = "${PngAssets.pngAssets}ads.png";

  // Icons SVG
//   static const String carSolidIcon = "${SvgAssets.svgAssets}car_solid.svg";

  // Video Assets
//   static const String testOnBoardingVideo =
//       "${VideoAssets.videoAssets}test.mp4";
}
