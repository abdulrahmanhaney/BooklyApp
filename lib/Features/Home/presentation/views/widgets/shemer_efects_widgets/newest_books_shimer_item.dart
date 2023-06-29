import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewestBookShimerItem extends StatelessWidget {
  const NewestBookShimerItem({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white.withOpacity(0.7);
    return Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: const Color.fromARGB(255, 58, 55, 55),
      child: SizedBox(
        height: 130,
        child: Padding(
          padding: const EdgeInsets.only(left: 35, top: 10, right: 35),
          child: SizedBox(
            height: 110,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: 110,
                    width: 110 - 110 / 3,
                    color: color,
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 15,
                        color: color,
                      ),
                      Container(
                        width: 100,
                        height: 15,
                        color: color,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 70,
                            height: 15,
                            color: color,
                          ),
                          const Spacer(),
                          Container(
                            width: 40,
                            height: 15,
                            color: color,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 20,
                            height: 15,
                            color: color,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
