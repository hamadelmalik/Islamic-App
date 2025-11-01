import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/models/hadith_data_model.dart';
import 'package:islamic_app/modules/layout/pages/hadith/widgets/hadithcardview.dart';
import '../../../../core/app_assets.dart';

class HadithView extends StatelessWidget {
  HadithView({super.key});

  // تحميل الأحاديث من الملفات
  Future<List<HadithDataModel>> loadHadithData() async {
    List<HadithDataModel> hadithList = [];
    for (int i = 1; i <= 50; i++) {
      String content = await rootBundle.loadString("assets/files/h$i.txt");
      int titleLength = content.indexOf("\n");
      String hadithTitle = content.substring(0, titleLength).trim();
      String hadithContent = content.substring(titleLength).trim();
      hadithList.add(
        HadithDataModel(hadithTitle: hadithTitle, hadithContent: hadithContent),
      );
    }
    return hadithList;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.hadithBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.asset(AppAssets.islamiLogo),
          Expanded(
            child: FutureBuilder<List<HadithDataModel>>(
              future: loadHadithData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("حدث خطأ: ${snapshot.error}"));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text("لا توجد أحاديث"));
                }

                List<HadithDataModel> hadithDataModelList = snapshot.data!;

                return CarouselSlider(
                  items: hadithDataModelList.map((data) {
                    return HadithCardView(hadithDataModel: data);
                  }).toList(),
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.6,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(
                      milliseconds: 800,
                    ),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
