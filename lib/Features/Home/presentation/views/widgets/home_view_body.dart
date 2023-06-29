import 'package:bookly_app/Features/Home/presentation/manage/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/manage/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/top_home_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles/text_styles.dart';
import 'newest_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<FeaturedBooksCubit>(context).getFeatuerdBooks();
        await BlocProvider.of<NewestBooksCubit>(context).getNewestBooks();
      },
      edgeOffset: 100,
      color: Colors.white,
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            floating: true,
            title: const CustomAppBar(),
            pinned: true,
          ),
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 10,
                ),
                TopListHome(),
                Padding(
                  padding: EdgeInsets.only(left: 30, bottom: 10, top: 30),
                  child: Text(
                    'Newest Books',
                    style: TextStyles.s18,
                  ),
                ),
                NewestBookList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
