import 'package:bookly_app/Features/Home/presentation/view/widgets/top_home_list.dart';
import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import 'best_seller_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const TopListHome(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              S.of(context).BestSeller,
              style: TextStyles.s18,
            ),
          ),
          const BestSellerListView(),
        ],
      ),
    );
  }
}
