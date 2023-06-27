import 'package:flutter/material.dart';

import 'book_details_action_widget.dart';
import 'book_details_top_widget.dart';
import 'other_books_list_view.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookDetilsTop(),
        BookDetailsActionWidget(),
        OtherBooksListView(),
      ],
    );
  }
}
