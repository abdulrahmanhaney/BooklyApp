import 'package:flutter/material.dart';

import 'book_best_seller_image.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30, top: 15),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            BookBestSellerItemImage(),
          ],
        ),
      ),
    );
  }
}
