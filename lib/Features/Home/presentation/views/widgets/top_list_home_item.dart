import 'package:bookly_app/Features/Home/presentation/views/book_detail_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class TopListHomeItem extends StatelessWidget {
  const TopListHomeItem({
    super.key,
    required this.index,
    this.hight = 224,
    this.width = 150,
  });

  final int index;
  final double hight;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BookDetailsView.id);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: index == 0 ? 224 : 200,
            width: index == 0 ? 150 : 137,
            margin: index == 0
                ? const EdgeInsets.only(left: 30, right: 15)
                : const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              border: Border.all(color: Colors.white.withOpacity(0.5)),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              image: const DecorationImage(
                image: NetworkImage(
                  AssetsData.testImage,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: index == 0 ? 10 : 20,
            right: index == 0 ? 20 : 22,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, BookDetailsView.id);
              },
              icon: Icon(
                Icons.play_arrow_rounded,
                color: Theme.of(context).primaryColor.withOpacity(0.6),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.white.withOpacity(0.7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
