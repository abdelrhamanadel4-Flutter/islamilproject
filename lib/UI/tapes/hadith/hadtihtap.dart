import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectt/ultilss/app%20routes.dart';
import '../../../ultilss/app assets.dart';
import '../../../ultilss/appcolors.dart';
import '../../../ultilss/appstyles.dart';

class Hadtih extends StatefulWidget {
  const Hadtih({super.key});

  @override
  State<Hadtih> createState() => _HadtihState();
}
List<String> hadithTitles = [];
List<String> hadithBodies = [];
class _HadtihState extends State<Hadtih> {
  @override
  Widget build(BuildContext context) {

    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    if(hadithBodies.isEmpty)
      loadSuraFile();
    return Expanded(
      child: CarouselSlider.builder(itemCount: 50, itemBuilder: (context, index, realIndex) =>
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.HadithDetails,arguments: index);
            },
            child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:width*0.02,vertical: height*0.02 ),
                    child: Container(
            width: width*0.75,
            decoration: BoxDecoration(
                color: Appcolors.primarycolor,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(image: AssetImage(AppAsstes.hadizhback),fit: BoxFit.fill)
            ),
            child: Column(
              children: [
                SizedBox(height: height*0.04,),
                Text(hadithTitles[index],style: AppStyles.bold24black,),
                SizedBox(height: height*0.04,),
                Expanded(
                  child: Text(hadithBodies[index],maxLines: 13,
                    style: AppStyles.bold16black,textDirection: TextDirection.rtl,textAlign: TextAlign.center,),
                )

              ],
            ),

                    ),
                  ),
          ) , options: CarouselOptions(
        height: 900,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.2,
        scrollDirection: Axis.horizontal,
      ))
    );
  }
  Future<void>loadSuraFile()async{
    List<String> titles = [];
    List<String> bodies = [];
    for(int i=0;i<50;i++) {
      String fileContent = await rootBundle.loadString(
          'assets/files/Hadeeth/h${i + 1}.txt');
      List<String>hadtihContent = fileContent.split('\n');
      String title = hadtihContent.isNotEmpty ? hadtihContent.first.trim() : '';
      String body = hadtihContent.length > 1 ? hadtihContent.sublist(1).join(
          '\n').trim() : '';
    titles.add(title);
    bodies.add(body);
      setState(() {
        hadithTitles=titles;
        hadithBodies=bodies;
      });
    }
  }
}


