import 'package:bookly_app/Features/Search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SearchTextField(),
          SearchResultListView(),
        ],
      ),
    );
  }
}
