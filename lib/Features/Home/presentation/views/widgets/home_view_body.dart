import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/top_home_list.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles/text_styles.dart';
import '../../../../../generated/l10n.dart';
import 'best_seller_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          title: const CustomAppBar(),
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopListHome(),
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 10, top: 30),
                child: Text(
                  S.of(context).BestSeller,
                  style: TextStyles.s18,
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
