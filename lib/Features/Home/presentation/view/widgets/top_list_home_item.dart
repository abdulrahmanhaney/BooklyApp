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
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 224,
          width: 150,
          margin: index == 0
              ? const EdgeInsets.only(left: 30)
              : const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
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
          bottom: 10,
          right: 2,
          child: IconButton(
            onPressed: () {},
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
    );
  }
}
