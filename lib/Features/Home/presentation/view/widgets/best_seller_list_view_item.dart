import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

import 'book_best_seller_image.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30, top: 20),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            BookBestSellerItemImage(),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style: TextStyles.s16,
                    overflow: TextOverflow.fade,
                  ),
                ),
                Text(
                  'J.K. Rowling',
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: TextStyles.s16,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
