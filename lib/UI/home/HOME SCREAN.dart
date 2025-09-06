import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projectt/UI/tapes/hadith/hadtihtap.dart';
import 'package:projectt/UI/tapes/quran/qurantab.dart';
import 'package:projectt/UI/tapes/sebha/sebhatap.dart';
import 'package:projectt/ultilss/app%20routes.dart';
import 'package:projectt/ultilss/appcolors.dart';
import '../../ultilss/app assets.dart';
import '../tapes/radio/radiotap.dart';
import '../tapes/time/timetap.dart';

class HomeScrean extends StatefulWidget {
  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
int selectedindex=0;
List<String> bacgroundIamges=[
  AppAsstes.quranbackground,
  AppAsstes.hadithbackground,
  AppAsstes.sebhabackground,
  AppAsstes.Radiobackground,
  AppAsstes.timebackground,
];
List<Widget>tabs=[
  Quran(),
  Hadtih(),
  Sebha(),
  RadioTap(),
  TimeTap()

];

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar :
      Theme(data: Theme.of(context).copyWith(
        canvasColor: Appcolors.primarycolor
      ),
        child: BottomNavigationBar(
            currentIndex:selectedindex ,
            onTap:(index){
            selectedindex=index;
            setState(() {

            });
          } ,
          //backgroundColor: Appcolors.primarycolor,
           // type:BottomNavigationBarType.fixed ,
            items: [
          BottomNavigationBarItem(icon: IconButton(onPressed: (){}, icon: getselectedBottonNevgationitem(index: 0,iconName: AppAsstes.quranimage)),label: 'Quran'),
          BottomNavigationBarItem(icon:  IconButton(onPressed: (){}, icon: getselectedBottonNevgationitem(index: 1,iconName: AppAsstes.adtahzimage)), label: 'Hadith'),
          BottomNavigationBarItem(icon:  IconButton(onPressed: (){}, icon: getselectedBottonNevgationitem(index: 2,iconName: AppAsstes.sbacaimage)), label: 'Sabha'),
          BottomNavigationBarItem(icon:  IconButton(onPressed: (){}, icon: getselectedBottonNevgationitem(index: 3,iconName: AppAsstes.radioimage)), label: 'Radio'),
          BottomNavigationBarItem(icon:  IconButton(onPressed: (){}, icon: getselectedBottonNevgationitem(index: 4,iconName: AppAsstes.timeimage)), label: 'Time'),


        ]),
      ),
      body: Stack(
        children: [
          Image.asset(bacgroundIamges[selectedindex]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top:height*0.03,
                ),
                child: Image.asset(AppAsstes.iconislami,
                height: height*0.15,
                width: width*0.69),
              ),
              Expanded(child: tabs[selectedindex])
            ],
          )


        ],


      ),
    );
  }

  Widget getselectedBottonNevgationitem({required int index,required String iconName}){
  return selectedindex==index?
      Container(
        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: Appcolors.blackbgcolor
        ),
        child: ImageIcon(AssetImage(iconName)),
      ):ImageIcon(AssetImage(iconName));
  }
}