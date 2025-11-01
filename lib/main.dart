import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_routename.dart';
import 'package:islamic_app/core/thems/app_them_manager.dart';
import 'package:islamic_app/modules/layout/layoutview.dart';
import 'package:islamic_app/modules/layout/pages/quran/qurandetailesview.dart';
import 'package:islamic_app/modules/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter demo",
      theme: AppThemeManager.appThemeData(),

      initialRoute: AppRouteName.initial,
      routes: {
        AppRouteName.initial: (context) => const SplashView(),
        AppRouteName.layoutRoute: (context) => const LayotView(),
        AppRouteName.quranDetailesView: (context) => const QuranDetailsView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
