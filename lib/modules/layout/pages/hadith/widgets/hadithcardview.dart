import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_assets.dart';
import 'package:islamic_app/core/thems/app_colorpallent.dart';
import 'package:islamic_app/models/hadith_data_model.dart';

class HadithCardView extends StatelessWidget {
  final HadithDataModel hadithDataModel;

  const HadithCardView({super.key, required this.hadithDataModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10.0, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: ColorPallete.primaryColor,
      ),
      child: Stack(
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AppAssets.imgleftcorner,
                    height: 85,
                    width: 85,
                    color: Colors.black,
                  ),
                  Image.asset(
                    AppAssets.imgrightcorner,
                    height: 85,
                    width: 85,
                    color: Colors.black,
                  ),
                ],
              ),
              Image.asset(
                AppAssets.imgbottomdecoration,
                color: Colors.black,
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Text(
                hadithDataModel.hadithTitle,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    hadithDataModel.hadithContent,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
