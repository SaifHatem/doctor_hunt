import '../../../../core/helpers/route_export.dart';

class CustomHeart extends StatefulWidget {
  const CustomHeart({
    super.key,
  });

  @override
  State<CustomHeart> createState() => _CustomHeartState();
}

class _CustomHeartState extends State<CustomHeart> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      child: Icon(
        size: 15,
        isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
        color: isFavorite ? Colors.red : Colors.grey,
      ),
    );
  }
}
