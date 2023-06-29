import 'package:bookly_app/Features/Home/presentation/views/widgets/rating_widget.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/text_styles.dart';
import 'book_image_widget.dart';

class BookDetilsSection extends StatelessWidget {
  const BookDetilsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.center,
          child: BookImageWidget(
            hight: MediaQuery.of(context).size.height / 4,
            radius: 20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Text(
            'Harry Potter and the Goblet of Fire',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyles.s20.copyWith(
              fontFamily: kFGrilli,
              fontWeight: FontWeight.normal,
            ),
          ),
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
            const RatingWidget(
              rating: 0.0,
            ),
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
