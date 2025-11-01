import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:islamic_app/core/app_assets.dart';
import 'package:islamic_app/core/app_routename.dart';
import 'package:islamic_app/models/sura_data_models.dart';

class QuranCartView extends StatelessWidget {
  final Surah suraDataMode;
  const QuranCartView({super.key, required this.suraDataMode});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Bounceable(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRouteName.quranDetailesView,
          arguments: suraDataMode,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.quranNumberImg),
                      fit: BoxFit.cover, // optional
                    ),
                  ),
                ),
                Text(
                  "${suraDataMode.surahNumber}",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  suraDataMode.nameEnglish,
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "${suraDataMode.ayahCount} Verses",
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              suraDataMode.nameArabic,
              style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
