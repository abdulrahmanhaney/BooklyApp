import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        Text(
          S.of(context).SplashText,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
