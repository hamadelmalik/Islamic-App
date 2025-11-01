import 'package:flutter/material.dart';
import 'package:islamic_app/core/app_assets.dart';
import 'package:islamic_app/core/thems/app_colorpallent.dart';
import 'package:islamic_app/models/sura_data_models.dart';
import 'package:islamic_app/modules/layout/pages/quran/widgets/recently_cart_widgets.dart';

import 'widgets/quran_cartview.dart';

// ignore: use_key_in_widget_constructors
class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List<Surah> quranList = [
    Surah(
      surahNumber: 1,
      nameArabic: "الفاتحة",
      nameEnglish: "Al-Fatiha",
      ayahCount: 7,

    ),
    Surah(
      surahNumber: 2,
      nameArabic: "البقرة",
      nameEnglish: "Al-Baqarah",
      ayahCount: 286,

    ),
    Surah(
      surahNumber: 50,
      nameArabic: "آل عمران",
      nameEnglish: "Aal-E-Imran",
      ayahCount: 200,

    ),
    Surah(
      surahNumber: 106,
      nameArabic: "النساء",
      nameEnglish: "An-Nisa",
      ayahCount: 176,

    ),
    Surah(
      surahNumber: 128,
      nameArabic: "المائدة",
      nameEnglish: "Al-Maidah",
      ayahCount: 120,

    ),
    Surah(
      surahNumber: 128,
      nameArabic: "الأنعام",
      nameEnglish: "Al-An'am",
      ayahCount: 165,

    ),
    Surah(
      surahNumber: 151,
      nameArabic: "الأعراف",
      nameEnglish: "Al-A'raf",
      ayahCount: 206,

    ),
  ];
  List<Surah> allQuranList = [
    Surah(surahNumber: 1, nameArabic: "الفاتحة", nameEnglish: "Al-Fatiha", ayahCount: 7),
    Surah(surahNumber: 2, nameArabic: "البقرة", nameEnglish: "Al-Baqarah", ayahCount: 286),
    Surah(surahNumber: 3, nameArabic: "آل عمران", nameEnglish: "Aal-E-Imran", ayahCount: 200),
    Surah(surahNumber: 4, nameArabic: "النساء", nameEnglish: "An-Nisa", ayahCount: 176),
    Surah(surahNumber: 5, nameArabic: "المائدة", nameEnglish: "Al-Maidah", ayahCount: 120),
    Surah(surahNumber: 6, nameArabic: "الأنعام", nameEnglish: "Al-An'am", ayahCount: 165),
    Surah(surahNumber: 7, nameArabic: "الأعراف", nameEnglish: "Al-A'raf", ayahCount: 206),
    Surah(surahNumber: 8, nameArabic: "الأنفال", nameEnglish: "Al-Anfal", ayahCount: 75),
    Surah(surahNumber: 9, nameArabic: "التوبة", nameEnglish: "At-Tawbah", ayahCount: 129),
    Surah(surahNumber: 10, nameArabic: "يونس", nameEnglish: "Yunus", ayahCount: 109),
    Surah(surahNumber: 11, nameArabic: "هود", nameEnglish: "Hud", ayahCount: 123),
    Surah(surahNumber: 12, nameArabic: "يوسف", nameEnglish: "Yusuf", ayahCount: 111),
    Surah(surahNumber: 13, nameArabic: "الرعد", nameEnglish: "Ar-Ra'd", ayahCount: 43),
    Surah(surahNumber: 14, nameArabic: "إبراهيم", nameEnglish: "Ibrahim", ayahCount: 52),
    Surah(surahNumber: 15, nameArabic: "الحجر", nameEnglish: "Al-Hijr", ayahCount: 99),
    Surah(surahNumber: 16, nameArabic: "النحل", nameEnglish: "An-Nahl", ayahCount: 128),
    Surah(surahNumber: 17, nameArabic: "الإسراء", nameEnglish: "Al-Isra", ayahCount: 111),
    Surah(surahNumber: 18, nameArabic: "الكهف", nameEnglish: "Al-Kahf", ayahCount: 110),
    Surah(surahNumber: 19, nameArabic: "مريم", nameEnglish: "Maryam", ayahCount: 98),
    Surah(surahNumber: 20, nameArabic: "طه", nameEnglish: "Ta-Ha", ayahCount: 135),
    Surah(surahNumber: 21, nameArabic: "الأنبياء", nameEnglish: "Al-Anbiya", ayahCount: 112),
    Surah(surahNumber: 22, nameArabic: "الحج", nameEnglish: "Al-Hajj", ayahCount: 78),
    Surah(surahNumber: 23, nameArabic: "المؤمنون", nameEnglish: "Al-Mu'minun", ayahCount: 118),
    Surah(surahNumber: 24, nameArabic: "النور", nameEnglish: "An-Nur", ayahCount: 64),
    Surah(surahNumber: 25, nameArabic: "الفرقان", nameEnglish: "Al-Furqan", ayahCount: 77),
    Surah(surahNumber: 26, nameArabic: "الشعراء", nameEnglish: "Ash-Shu'ara", ayahCount: 227),
    Surah(surahNumber: 27, nameArabic: "النمل", nameEnglish: "An-Naml", ayahCount: 93),
    Surah(surahNumber: 28, nameArabic: "القصص", nameEnglish: "Al-Qasas", ayahCount: 88),
    Surah(surahNumber: 29, nameArabic: "العنكبوت", nameEnglish: "Al-Ankabut", ayahCount: 69),
    Surah(surahNumber: 30, nameArabic: "الروم", nameEnglish: "Ar-Rum", ayahCount: 60),
    Surah(surahNumber: 31, nameArabic: "لقمان", nameEnglish: "Luqman", ayahCount: 34),
    Surah(surahNumber: 32, nameArabic: "السجدة", nameEnglish: "As-Sajda", ayahCount: 30),
    Surah(surahNumber: 33, nameArabic: "الأحزاب", nameEnglish: "Al-Ahzab", ayahCount: 73),
    Surah(surahNumber: 34, nameArabic: "سبأ", nameEnglish: "Saba", ayahCount: 54),
    Surah(surahNumber: 35, nameArabic: "فاطر", nameEnglish: "Fatir", ayahCount: 45),
    Surah(surahNumber: 36, nameArabic: "يس", nameEnglish: "Ya-Sin", ayahCount: 83),
    Surah(surahNumber: 37, nameArabic: "الصافات", nameEnglish: "As-Saffat", ayahCount: 182),
    Surah(surahNumber: 38, nameArabic: "ص", nameEnglish: "Sad", ayahCount: 88),
    Surah(surahNumber: 39, nameArabic: "الزمر", nameEnglish: "Az-Zumar", ayahCount: 75),
    Surah(surahNumber: 40, nameArabic: "غافر", nameEnglish: "Ghafir", ayahCount: 85),
    Surah(surahNumber: 41, nameArabic: "فصلت", nameEnglish: "Fussilat", ayahCount: 54),
    Surah(surahNumber: 42, nameArabic: "الشورى", nameEnglish: "Ash-Shura", ayahCount: 53),
    Surah(surahNumber: 43, nameArabic: "الزخرف", nameEnglish: "Az-Zukhruf", ayahCount: 89),
    Surah(surahNumber: 44, nameArabic: "الدخان", nameEnglish: "Ad-Dukhan", ayahCount: 59),
    Surah(surahNumber: 45, nameArabic: "الجاثية", nameEnglish: "Al-Jathiya", ayahCount: 37),
    Surah(surahNumber: 46, nameArabic: "الأحقاف", nameEnglish: "Al-Ahqaf", ayahCount: 35),
    Surah(surahNumber: 47, nameArabic: "محمد", nameEnglish: "Muhammad", ayahCount: 38),
    Surah(surahNumber: 48, nameArabic: "الفتح", nameEnglish: "Al-Fath", ayahCount: 29),
    Surah(surahNumber: 49, nameArabic: "الحجرات", nameEnglish: "Al-Hujurat", ayahCount: 18),
    Surah(surahNumber: 50, nameArabic: "ق", nameEnglish: "Qaf", ayahCount: 45),
    Surah(surahNumber: 51, nameArabic: "الذاريات", nameEnglish: "Adh-Dhariyat", ayahCount: 60),
    Surah(surahNumber: 52, nameArabic: "الطور", nameEnglish: "At-Tur", ayahCount: 49),
    Surah(surahNumber: 53, nameArabic: "النجم", nameEnglish: "An-Najm", ayahCount: 62),
    Surah(surahNumber: 54, nameArabic: "القمر", nameEnglish: "Al-Qamar", ayahCount: 55),
    Surah(surahNumber: 55, nameArabic: "الرحمن", nameEnglish: "Ar-Rahman", ayahCount: 78),
    Surah(surahNumber: 56, nameArabic: "الواقعة", nameEnglish: "Al-Waqia", ayahCount: 96),
    Surah(surahNumber: 57, nameArabic: "الحديد", nameEnglish: "Al-Hadid", ayahCount: 29),
    Surah(surahNumber: 58, nameArabic: "المجادلة", nameEnglish: "Al-Mujadila", ayahCount: 22),
    Surah(surahNumber: 59, nameArabic: "الحشر", nameEnglish: "Al-Hashr", ayahCount: 24),
    Surah(surahNumber: 60, nameArabic: "الممتحنة", nameEnglish: "Al-Mumtahina", ayahCount: 13),
    Surah(surahNumber: 61, nameArabic: "الصف", nameEnglish: "As-Saff", ayahCount: 14),
    Surah(surahNumber: 62, nameArabic: "الجمعة", nameEnglish: "Al-Jumua", ayahCount: 11),
    Surah(surahNumber: 63, nameArabic: "المنافقون", nameEnglish: "Al-Munafiqun", ayahCount: 11),
    Surah(surahNumber: 64, nameArabic: "التغابن", nameEnglish: "At-Taghabun", ayahCount: 18),
    Surah(surahNumber: 65, nameArabic: "الطلاق", nameEnglish: "At-Talaq", ayahCount: 12),
    Surah(surahNumber: 66, nameArabic: "التحريم", nameEnglish: "At-Tahrim", ayahCount: 12),
    Surah(surahNumber: 67, nameArabic: "الملك", nameEnglish: "Al-Mulk", ayahCount: 30),
    Surah(surahNumber: 68, nameArabic: "القلم", nameEnglish: "Al-Qalam", ayahCount: 52),
    Surah(surahNumber: 69, nameArabic: "الحاقة", nameEnglish: "Al-Haaqqa", ayahCount: 52),
    Surah(surahNumber: 70, nameArabic: "المعارج", nameEnglish: "Al-Ma'arij", ayahCount: 44),
    Surah(surahNumber: 71, nameArabic: "نوح", nameEnglish: "Nuh", ayahCount: 28),
    Surah(surahNumber: 72, nameArabic: "الجن", nameEnglish: "Al-Jinn", ayahCount: 28),
    Surah(surahNumber: 73, nameArabic: "المزمل", nameEnglish: "Al-Muzzammil", ayahCount: 20),
    Surah(surahNumber: 74, nameArabic: "المدثر", nameEnglish: "Al-Muddathir", ayahCount: 56),
    Surah(surahNumber: 75, nameArabic: "القيامة", nameEnglish: "Al-Qiyama", ayahCount: 40),
    Surah(surahNumber: 76, nameArabic: "الإنسان", nameEnglish: "Al-Insan", ayahCount: 31),
    Surah(surahNumber: 77, nameArabic: "المرسلات", nameEnglish: "Al-Mursalat", ayahCount: 50),
    Surah(surahNumber: 78, nameArabic: "النبأ", nameEnglish: "An-Naba", ayahCount: 40),
    Surah(surahNumber: 79, nameArabic: "النازعات", nameEnglish: "An-Nazi'at", ayahCount: 46),
    Surah(surahNumber: 80, nameArabic: "عبس", nameEnglish: "Abasa", ayahCount: 42),
    Surah(surahNumber: 81, nameArabic: "التكوير", nameEnglish: "At-Takwir", ayahCount: 29),
    Surah(surahNumber: 82, nameArabic: "الإنفطار", nameEnglish: "Al-Infitar", ayahCount: 19),
    Surah(surahNumber: 83, nameArabic: "المطففين", nameEnglish: "Al-Mutaffifin", ayahCount: 36),
    Surah(surahNumber: 84, nameArabic: "الإنشقاق", nameEnglish: "Al-Inshiqaq", ayahCount: 25),
    Surah(surahNumber: 85, nameArabic: "البروج", nameEnglish: "Al-Buruj", ayahCount: 22),
    Surah(surahNumber: 86, nameArabic: "الطارق", nameEnglish: "At-Tariq", ayahCount: 17),
    Surah(surahNumber: 87, nameArabic: "الأعلى", nameEnglish: "Al-Ala", ayahCount: 19),
    Surah(surahNumber: 88, nameArabic: "الغاشية", nameEnglish: "Al-Ghashiya", ayahCount: 26),
    Surah(surahNumber: 89, nameArabic: "الفجر", nameEnglish: "Al-Fajr", ayahCount: 30),
    Surah(surahNumber: 90, nameArabic: "البلد", nameEnglish: "Al-Balad", ayahCount: 20),
    Surah(surahNumber: 91, nameArabic: "الشمس", nameEnglish: "Ash-Shams", ayahCount: 15),
    Surah(surahNumber: 92, nameArabic: "الليل", nameEnglish: "Al-Lail", ayahCount: 21),
    Surah(surahNumber: 93, nameArabic: "الضحى", nameEnglish: "Ad-Duhaa", ayahCount: 11),
    Surah(surahNumber: 94, nameArabic: "الشرح", nameEnglish: "Ash-Sharh", ayahCount: 8),
    Surah(surahNumber: 95, nameArabic: "التين", nameEnglish: "At-Tin", ayahCount: 8),
    Surah(surahNumber: 96, nameArabic: "العلق", nameEnglish: "Al-Alaq", ayahCount: 19),
    Surah(surahNumber: 97, nameArabic: "القدر", nameEnglish: "Al-Qadr", ayahCount: 5),
    Surah(surahNumber: 98, nameArabic: "البينة", nameEnglish: "Al-Bayyina", ayahCount: 8),
    Surah(surahNumber: 99, nameArabic: "الزلزلة", nameEnglish: "Az-Zalzala", ayahCount: 8),
    Surah(surahNumber: 100, nameArabic: "العاديات", nameEnglish: "Al-Adiyat", ayahCount: 11),
    Surah(surahNumber: 101, nameArabic: "القارعة", nameEnglish: "Al-Qaria", ayahCount: 11),
    Surah(surahNumber: 102, nameArabic: "التكاثر", nameEnglish: "At-Takathur", ayahCount: 8),
    Surah(surahNumber: 103, nameArabic: "العصر", nameEnglish: "Al-Asr", ayahCount: 3),
    Surah(surahNumber: 104, nameArabic: "الهمزة", nameEnglish: "Al-Humaza", ayahCount: 9),
    Surah(surahNumber: 105, nameArabic: "الفيل", nameEnglish: "Al-Fil", ayahCount: 5),
    Surah(surahNumber: 106, nameArabic: "قريش", nameEnglish: "Quraish", ayahCount: 4),
    Surah(surahNumber: 107, nameArabic: "الماعون", nameEnglish: "Al-Ma'un", ayahCount: 7),
    Surah(surahNumber: 108, nameArabic: "الكوثر", nameEnglish: "Al-Kawthar", ayahCount: 3),
    Surah(surahNumber: 109, nameArabic: "الكافرون", nameEnglish: "Al-Kafiroon", ayahCount: 6),
    Surah(surahNumber: 110, nameArabic: "النصر", nameEnglish: "An-Nasr", ayahCount: 3),
    Surah(surahNumber: 111, nameArabic: "المسد", nameEnglish: "Al-Masad", ayahCount: 5),
    Surah(surahNumber: 112, nameArabic: "الإخلاص", nameEnglish: "Al-Ikhlas", ayahCount: 4),
    Surah(surahNumber: 113, nameArabic: "الفلق", nameEnglish: "Al-Falaq", ayahCount: 5),
    Surah(surahNumber: 114, nameArabic: "الناس", nameEnglish: "An-Nas", ayahCount: 6),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.quranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.islamiLogo),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: theme.textTheme.bodyLarge,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ImageIcon(
                      AssetImage(AppAssets.quranIcon),
                      color: ColorPallete.primaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: ColorPallete.primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: ColorPallete.primaryColor),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 5.0,
              ),
              child: Text("Most Recently  ", style: theme.textTheme.bodyLarge),
            ),
            SizedBox(
              height: 160,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (BuildContext context, int index) {
                  return RecentlyCartView(suraDataMode: quranList[index],);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
                itemCount: quranList.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 5.0,
              ),
              child: Text("Sura List   ", style: theme.textTheme.bodyLarge),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return   QuranCartView(suraDataMode: allQuranList[index],);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.white,
                  thickness: 2,
                  indent: 60,
                  endIndent: 60,
                );
              },
              itemCount: allQuranList.length,
            ),
          ],
        ),
      ),
    );
  }
}
