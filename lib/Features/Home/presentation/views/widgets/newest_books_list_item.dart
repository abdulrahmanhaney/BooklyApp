import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating_widget.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

import 'book_image_widget.dart';

class NewestBookItem extends StatelessWidget {
  const NewestBookItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BookDetailsView.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 35, top: 10, right: 35),
        child: SizedBox(
          height: 110,
          child: Row(
            children: [
              BookImageWidget(
                imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail!,
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.volumeInfo?.title ?? '',
                      style: TextStyles.cs16,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Text(
                      bookModel.volumeInfo?.authors?[0] ?? 'UnKnown',
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: TextStyles.s14.copyWith(
                            fontFamily: kFGrilli,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.2,
                          ),
                        ),
                        const Spacer(),
                        RatingWidget(
                          rating:
                              bookModel.volumeInfo!.averageRating?.toDouble() ??
                                  0.0,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(${bookModel.volumeInfo?.ratingsCount ?? 0})',
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
