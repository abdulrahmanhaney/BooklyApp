import 'package:bookly_app/Features/Splash/persentation/views/widgets/splash_view_body.dart';
import 'package:bookly_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const String id = 'SplashView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SplashViewBody(),
      appBar: AppBar(
        title: Text(S.of(context).AppName),
      ),
    );
  }
}
