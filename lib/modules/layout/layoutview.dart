import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_assets.dart';
import 'package:islamic_app/modules/layout/pages/hadith/hadithview.dart';
import 'package:islamic_app/modules/layout/pages/quran/quranview.dart';
import 'package:islamic_app/modules/layout/pages/radio/radioview.dart';
import 'package:islamic_app/modules/layout/pages/tasbeh/tasbihview.dart';
import 'package:islamic_app/modules/layout/pages/time/timeview.dart';

class LayotView extends StatefulWidget {
  const LayotView({super.key});

  @override
  State<LayotView> createState() => _LayotViewState();
}

class _LayotViewState extends State<LayotView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadithView(),
    TasbihView(),
    RadioView(),
    TimeView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.quranIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50),
              ),
              child: ImageIcon(AssetImage(AppAssets.quranIcon)),
            ),
            label: 'Quran',
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.hadithIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50),
              ),
              child: ImageIcon(AssetImage(AppAssets.hadithIcon)),
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.tasbihIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50),
              ),
              child: ImageIcon(AssetImage(AppAssets.tasbihIcon)),
            ),
            label: "tasbih",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.radioIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50),
              ),
              child: ImageIcon(AssetImage(AppAssets.radioIcon)),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.timeIcon)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50),
              ),
              child: ImageIcon(AssetImage(AppAssets.timeIcon)),
            ),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
