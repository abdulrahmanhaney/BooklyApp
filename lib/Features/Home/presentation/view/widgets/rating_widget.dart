import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '4.3',
          style: TextStyles.s14,
        )
      ],
    );
  }
}
