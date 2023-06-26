import 'package:bookly_app/Features/Home/presentation/view/widgets/rating_widget.dart';
import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

import 'book_best_seller_image.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20, right: 50),
      child: SizedBox(
        height: 110,
        child: Row(
          children: [
            const BookBestSellerItemImage(),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Harry Potter and the Goblet of Fire',
                    style: TextStyles.s16,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  const Text(
                    'J.K. Rowling',
                  ),
                  Row(
                    children: [
                      const Text(
                        '19.99' ' €',
                        style: TextStyles.s16,
                      ),
                      const Spacer(),
                      const RatingWidget(),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '(2390)',
                        style: TextStyles.s14
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
