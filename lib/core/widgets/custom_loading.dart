import 'package:flutter/material.dart';

class LoadingIndecator extends StatelessWidget {
  const LoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.scale(
        scale: 0.7,
        child: const CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}
