import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TopListShimerItem extends StatelessWidget {
  const TopListShimerItem({
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
    Color color = Colors.white.withOpacity(0.7);
    return Stack(
      alignment: Alignment.center,
      children: [
        Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: const Color.fromARGB(255, 58, 55, 55),
          child: Container(
            height: index == 0 ? 224 : 200,
            width: index == 0 ? 150 : 137,
            margin: index == 0
                ? const EdgeInsets.only(left: 30, right: 15)
                : const EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: color,
              border: Border.all(color: color),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        Positioned(
          bottom: index == 0 ? 10 : 20,
          right: index == 0 ? 20 : 22,
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
