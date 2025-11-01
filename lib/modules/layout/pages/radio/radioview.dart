import 'package:flutter/material.dart';
import 'package:islamic_app/core/thems/app_colorpallent.dart';
import 'package:menu_table_switch/menu_table_switch.dart';

import '../../../../core/app_assets.dart';

// ignore: use_key_in_widget_constructors
class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.radioBackground),
          fit: BoxFit.cover,
        ),
      ),

      child: Column(
        children: [
          Image.asset(AppAssets.islamiLogo),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 60),
                  decoration: BoxDecoration(
                    color: ColorPallete.primaryColor,
                    // color: isSelected ? Color(0xFFD2B48C) : Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text("Radio", style: theme.textTheme.titleLarge),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 60),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // color: isSelected ? Color(0xFFD2B48C) : Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text("Reciters", style: theme.textTheme.titleLarge),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: ColorPallete.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text(
                  "Radio Ibrahim Al-Akdar",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Row(
                    children: [
                      Image.asset(AppAssets.Polygon, height: 40, width: 40),
                      SizedBox(width: 20),
                      Image.asset(AppAssets.volumeHigh, height: 50, width: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: ColorPallete.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text(
                  "Radio Ahmed Al-trabulsi",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Row(
                    children: [
                      Image.asset(AppAssets.Polygon, height: 40, width: 40),
                      SizedBox(width: 20),
                      Image.asset(AppAssets.volumeHigh, height: 50, width: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          Container(
            padding: EdgeInsets.all(10),
            height: 150,
            width: double.infinity,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: ColorPallete.primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text(
                  "Radio Al-Qaria Yassen",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Row(
                    children: [

                      Image.asset(AppAssets.Group7, height: 60, width: 90),
                    ],
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
