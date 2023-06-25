import 'package:bookly_app/Features/Home/view/home_view.dart';
import 'package:bookly_app/Features/Splash/view/splash_view.dart';
import 'package:flutter/cupertino.dart';

Map<String, WidgetBuilder> appRoutes = {
  SplashView.id: (context) => const SplashView(),
  HomeView.id: (context) => const HomeView(),
};
