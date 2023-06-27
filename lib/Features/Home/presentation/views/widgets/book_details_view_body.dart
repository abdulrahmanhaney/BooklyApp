import 'package:flutter/material.dart';

import 'book_details_top_widget.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BookDetilsTop(),
      ],
    );
  }
}
