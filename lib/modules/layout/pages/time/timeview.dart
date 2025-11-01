import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_assets.dart';
import 'package:islamic_app/core/thems/app_colorpallent.dart';

// ignore: use_key_in_widget_constructors
class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.timeBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppAssets.islamiLogo),
          SizedBox(height: 20),
          Image.asset(AppAssets.Group10),
          SizedBox(height: 20),
          Text(
            "Azkar",
            style: theme.textTheme.headlineLarge?.copyWith(color: Colors.white),
          ),

          Expanded(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: BoxDecoration(

                      border: Border.all(

                        color: ColorPallete.primaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    height: 200,
                    child: Column(
                      children: [
                        Image.asset(AppAssets.ttttttt, height: 100, width: 100),
                        SizedBox(height: 50),
                        Text(
                          "Evening Azkar",
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      // color: ColorPallete.primaryColor,
                      border: Border.all(
                        // إضافة الحدود
                        color: ColorPallete.primaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    height: 200,
                    width: 150,
                    child: Column(
                      children: [
                        Image.asset(AppAssets.ttttttt, height: 100, width: 100),
                        SizedBox(height: 50),
                        Text(
                          "Morning Azkar",
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
