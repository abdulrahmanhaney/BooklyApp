import 'package:flutter/material.dart';

class LoadingIndecator extends StatelessWidget {
  const LoadingIndecator({super.key, this.color = Colors.white});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.scale(
        scale: 0.7,
        child: CircularProgressIndicator(
          color: color,
        ),
      ),
    );
  }
}
