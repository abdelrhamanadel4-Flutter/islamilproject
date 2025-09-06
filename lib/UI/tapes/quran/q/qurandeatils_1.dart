import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectt/UI/tapes/quran/q/verssesstyle_!.dart';
import 'package:projectt/UI/tapes/quran/quran%20resoures.dart';
import 'package:projectt/UI/tapes/quran/veresstyle.dart';
import 'package:projectt/ultilss/app%20assets.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';

class QuranDetails1 extends StatefulWidget {
  QuranDetails1({super.key});

  @override
  State<QuranDetails1> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails1> {
  String sura='';


  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    int index=ModalRoute.of(context)?.settings.arguments as int;
    if(sura.isEmpty)
      loadSuraFile(index);
    return Scaffold(
      appBar: AppBar(
        title: Text(QuranResoures.englishQuranSurahs[index],style: AppStyles.bold20primary,),

      ),
      body: Container(
        color: Appcolors.blackbgcolor,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [

            Image.asset(AppAsstes.qurandetails,width: double.infinity,fit: BoxFit.fill,),

            Padding(

              padding: EdgeInsets.symmetric(vertical:height*0.02),
              child: Column(
                children: [
                  Text(QuranResoures.arabicAuranSuras[index],style: AppStyles.bold24primary,),
                  SizedBox(height: height*0.04,),

                  sura.isEmpty?Center(child: CircularProgressIndicator(
                    color: Appcolors.primarycolor,
                  )):Expanded(
                      child:SingleChildScrollView(child: VeresStyle1(contant: sura)) ),
                  SizedBox(height: height*0.15,)

                ],

              ),

            ),
          ],
        ),
      ),
    );
  }

  Future<void>loadSuraFile(int index)async{
    String fileContent=await rootBundle.loadString('assets/files/quran/${index+1}.txt');
    List<String>suraContent=fileContent.split('\n');
    for(int i=0;i<suraContent.length;i++){
      suraContent[i]='[${i+1}]'+ suraContent[i];
    }
    sura= suraContent.join();
    setState(() {

    });
  }
}
