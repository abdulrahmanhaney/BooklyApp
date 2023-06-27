import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class BookDetailsActionWidget extends StatelessWidget {
  const BookDetailsActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.7,
        margin: const EdgeInsets.only(top: 30, bottom: 40),
        decoration: const BoxDecoration(
          color: kPreviewColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Text(
                  '19.99 €',
                  style: TextStyles.s16.copyWith(color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                child: const Text(
                  'Free preview',
                  style: TextStyles.s16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
