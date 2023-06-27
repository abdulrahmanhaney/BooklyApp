import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

class BookDetailsActionSection extends StatelessWidget {
  const BookDetailsActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  '19.99 €',
                  style: TextStyles.s16.copyWith(color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(kPreviewColor),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Free preview',
                  style: TextStyles.s16.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
