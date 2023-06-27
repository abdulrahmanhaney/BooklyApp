import 'package:bookly_app/Features/Home/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/text_styles.dart';
import 'book_best_seller_image.dart';

class BookDetilsTop extends StatelessWidget {
  const BookDetilsTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Align(
          alignment: Alignment.center,
          child: BookImage(
            hight: 260,
            width: 170,
            radius: 20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'The Jungle Book',
          textAlign: TextAlign.center,
          style: TextStyles.s20,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Rudyard Kipling',
          textAlign: TextAlign.center,
          style: TextStyles.s14.copyWith(fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RatingWidget(),
            const SizedBox(
              width: 10,
            ),
            Text(
              '(2390)',
              style: TextStyles.s12.copyWith(fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
