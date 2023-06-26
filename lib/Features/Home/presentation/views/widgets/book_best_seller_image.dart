import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class BookBestSellerItemImage extends StatelessWidget {
  const BookBestSellerItemImage({
    super.key,
    this.hight = 110,
    this.width = 80,
  });

  final double hight;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight,
      width: width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: NetworkImage(
            AssetsData.testImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
