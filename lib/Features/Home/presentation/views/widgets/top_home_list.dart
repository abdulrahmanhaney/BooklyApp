import 'package:bookly_app/Features/Home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/top_list_home_item.dart';
import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopListHome extends StatelessWidget {
  const TopListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
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
          } else if (state is FeaturedBooksFailuer) {
            return ErrorWidget(state.errorMessage);
          } else {
            return const LoadingIndecator();
          }
        },
      ),
    );
  }
}
