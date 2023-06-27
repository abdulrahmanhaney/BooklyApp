import 'package:bookly_app/Features/Home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating_widget.dart';
import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

import 'book_best_seller_image.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BookDetailsView.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 10, right: 50),
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              const BookImage(),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Harry Potter and the Goblet of Fire',
                      style: TextStyles.cs16,
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
                          style: TextStyles.s14,
                        ),
                        const Spacer(),
                        const RatingWidget(),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(2390)',
                          style: TextStyles.s12
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
      ),
    );
  }
}
