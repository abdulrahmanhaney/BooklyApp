import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class BookImageWidget extends StatelessWidget {
  const BookImageWidget({
    super.key,
    this.hight = 110,
    this.radius = 12,
    this.onTap,
    this.imageUrl = AssetsData.testImage,
  });

  final double hight;
  final double radius;
  final VoidCallback? onTap;
  final String imageUrl;

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
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) => const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
