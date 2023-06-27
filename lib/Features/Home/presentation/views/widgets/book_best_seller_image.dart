import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
    this.hight = 110,
    this.width = 80,
    this.radius = 12,
  });

  final double hight;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        border: Border.all(color: Colors.white.withOpacity(0.6), width: 1),
        image: const DecorationImage(
          image: NetworkImage(
            AssetsData.testImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
