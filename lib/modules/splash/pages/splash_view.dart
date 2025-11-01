import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_assets.dart';
import 'package:islamic_app/core/app_routename.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRouteName.layoutRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.splashBackground,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
