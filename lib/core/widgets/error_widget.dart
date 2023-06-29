import 'package:bookly_app/core/utils/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: TextStyles.s18,
      ),
    );
  }
}
