import 'package:flutter/material.dart';

import '../../../../core/app_assets.dart';

// ignore: use_key_in_widget_constructors
class TasbihView extends StatelessWidget {
  const TasbihView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.tasbehBackground),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(
        children: [
          Image.asset(AppAssets.islamiLogo),
          SizedBox(height: 20,),
          Text(
            "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
            style: theme.textTheme.bodyLarge?.copyWith(fontSize: 33),
          ),
          Image.asset(AppAssets.Sebha),
        ],
      ),
    );
  }
}
