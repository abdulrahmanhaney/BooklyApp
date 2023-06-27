import 'package:bookly_app/Features/Search/presentation/views/search_view.dart';
import 'package:bookly_app/core/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'Features/Home/presentation/views/book_detail_view.dart';
import 'Features/Home/presentation/views/home_view.dart';
import 'Features/Splash/presentation/view/splash_view.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
        BookDetailsView.id: (context) => const BookDetailsView(),
        SearchView.id: (context) => const SearchView(),
      },
      initialRoute: SplashView.id,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('en'),
      theme: Themes.mainTheme(),
      home: const SplashView(),
    );
  }
}
