import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_view_body.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  static const id = 'BookDetailsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customBookDetailsAppBar(context),
      body: const BookdetailsViewBody(),
    );
  }
}
