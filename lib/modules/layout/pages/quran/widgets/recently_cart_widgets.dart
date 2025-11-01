import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_assets.dart';
import 'package:islamic_app/core/thems/app_colorpallent.dart';
import 'package:islamic_app/models/sura_data_models.dart';

class RecentlyCartView extends StatelessWidget {
  final Surah suraDataMode;
  const RecentlyCartView({super.key, required this.suraDataMode});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(8.0),
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorPallete.primaryColor,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text(
                suraDataMode.nameEnglish,
                style: theme.textTheme.headlineLarge,
              ),

              Text(
                suraDataMode.nameArabic,
                style: theme.textTheme.headlineLarge,
              ),
              Text(
                "${suraDataMode.ayahCount} Verses",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),

          Expanded(child: Image.asset(AppAssets.quranCardImg)),
        ],
      ),
    );
  }
}
