import 'package:bookly_app/Features/Home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/shemer_efects_widgets/toplist_shimer_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/top_list_home_item.dart';
import 'package:bookly_app/core/helpers/show_snake_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopListHome extends StatelessWidget {
  const TopListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
        listener: (context, state) {
          if (state is FeaturedBooksFailuer) {
            showSnakBar(context, text: state.errorMessage);
          }
        },
        builder: (context, state) {
          if (state is FeaturedBooksSuccess) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return TopListHomeItem(
                  index: index,
                  bookModel: state.books[index],
                );
              },
            );
          } else {
            return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return TopListShimerItem(index: index);
              },
            );
          }
        },
      ),
    );
  }
}
