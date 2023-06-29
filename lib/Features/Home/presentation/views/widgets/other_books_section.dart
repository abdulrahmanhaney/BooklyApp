import 'package:bookly_app/Features/Home/presentation/views/book_detail_view.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_image_widget.dart';
import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OtherBooksSection extends StatelessWidget {
  const OtherBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30, bottom: 30),
            child: Text(
              'You can also like',
              style: TextStyles.s14,
            ),
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 30,
              itemBuilder: (context, index) {
                return Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(left: 30, right: 10)
                      : const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: BookImageWidget(
                      hight: MediaQuery.of(context).size.height / 7,
                      onTap: () {
                        Navigator.pushNamed(context, BookDetailsView.id);
                      },
                    ),
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
