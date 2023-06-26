import 'package:bookly_app/Features/Home/presentation/view/widgets/top_list_home_item.dart';
import 'package:flutter/material.dart';

class TopListHome extends StatelessWidget {
  const TopListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return TopListHomeItem(
            index: index,
          );
        },
      ),
    );
  }
}
