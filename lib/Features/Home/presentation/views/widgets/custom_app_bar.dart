import 'package:bookly_app/Features/Search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Image.asset(
          AssetsData.logo,
          height: 18,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, SearchView.id);
          },
          icon: Image.asset(
            AssetsData.searchIcon,
            height: 24,
          ),
        ),
      ],
    );
  }
}
