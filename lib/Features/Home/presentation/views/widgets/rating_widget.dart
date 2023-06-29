import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          rating.toString(),
          style: TextStyles.s12,
        )
      ],
    );
  }
}
