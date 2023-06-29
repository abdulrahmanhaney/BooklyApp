import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

void showSnakBar(context, {required String text}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 4),
      content: Row(
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyles.s12,
          ),
        ],
      ),
    ),
  );
}
