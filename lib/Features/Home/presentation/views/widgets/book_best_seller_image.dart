import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
    this.hight = 110,
    this.radius = 12,
    this.onTap,
  });

  final double hight;
  final double radius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: hight,
        width: hight - hight / 3,
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
      ),
    );
  }
}
