import 'package:bookly_app/Features/Home/presentation/views/widgets/shemer_efects_widgets/newest_books_shimer_item.dart';
import 'package:flutter/material.dart';

class NewestBooksShimerList extends StatelessWidget {
  const NewestBooksShimerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) => const NewestBookShimerItem(),
    );
  }
}
