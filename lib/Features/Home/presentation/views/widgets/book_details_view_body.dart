import 'package:flutter/material.dart';

import 'book_details_action_section.dart';
import 'book_details_section.dart';
import 'other_books_section.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetilsSection(),
              SizedBox(
                height: 30,
              ),
              BookDetailsActionSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              OtherBooksSection(),
            ],
          ),
        )
      ],
    );
  }
}
