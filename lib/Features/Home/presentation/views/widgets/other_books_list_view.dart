import 'package:bookly_app/Features/Home/presentation/views/widgets/book_best_seller_image.dart';
import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OtherBooksListView extends StatelessWidget {
  const OtherBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'You can also like',
              style: TextStyles.s14,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 30,
              itemBuilder: (context, index) {
                return Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 30, right: 10)
                      : const EdgeInsets.only(right: 10),
                  child: const Align(
                    alignment: Alignment.center,
                    child: BookImage(hight: 130, width: 90),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
