import 'package:bookly_app/Features/Home/presentation/manage/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/shemer_efects_widgets/neweat_books_shimer_list.dart';
import 'package:bookly_app/core/helpers/show_snake_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_list_item.dart';

class NewestBookList extends StatelessWidget {
  const NewestBookList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {
        if (state is NewestBooksFailuer) {
          showSnakBar(context, text: state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                NewestBookItem(bookModel: state.books[index]),
          );
        } else {
          return const NewestBooksShimerList();
        }
      },
    );
  }
}
