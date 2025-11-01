import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/core/app_assets.dart';
import 'package:islamic_app/core/thems/app_colorpallent.dart';
import 'package:islamic_app/models/sura_data_models.dart';
class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    final  themedate = Theme.of(context);
    final Surah data =
    ModalRoute.of(context)!.settings.arguments as Surah;
    if (verses.isEmpty) loadDataFormAssets(data.surahNumber.toString());
    return Scaffold(
      appBar: AppBar(title: Text(data.nameArabic), centerTitle: true),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.imgleftcorner, height: 85, width: 85),

                    Image.asset(
                      AppAssets.imgrightcorner,
                      height: 85,
                      width: 85,
                    ),
                  ],
                ),
              ),

              Image.asset(AppAssets.imgbottomdecoration),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Text(
                data.nameEnglish,
                textAlign: TextAlign.center,
                style: themedate.textTheme.titleLarge?.copyWith(
                  color: ColorPallete.primaryColor,
                ),
              ),
              SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Text(
                      "${verses[index]} [${index}]",
                      textAlign: TextAlign.center,
                      style: themedate.textTheme.titleMedium?.copyWith(
                        color: ColorPallete.primaryColor,
                      ),
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<String> verses = [];
  Future<void> loadDataFormAssets(String suraNumber) async {
    String content = await rootBundle.loadString("assets/files/$suraNumber.txt");

    verses = content.split("\n");
    setState(() {});

    log(content);
    //log(verses.length);
  }
}
