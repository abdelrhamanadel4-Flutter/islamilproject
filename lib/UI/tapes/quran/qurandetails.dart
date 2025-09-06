import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectt/UI/tapes/quran/quran%20resoures.dart';
import 'package:projectt/UI/tapes/quran/veresstyle.dart';
import 'package:projectt/ultilss/app%20assets.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';

class QuranDetails extends StatefulWidget {
   QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
   List<String>veres=[];

   @override
  Widget build(BuildContext context) {
     var height=MediaQuery.of(context).size.height;
    int index=ModalRoute.of(context)?.settings.arguments as int;
    if(veres.isEmpty)
    loadSuraFile(index);
    return Scaffold(
      appBar: AppBar(
title: Text(QuranResoures.englishQuranSurahs[index],style: AppStyles.bold20primary,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_outlined))
        ],
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

                  veres.isEmpty?Center(child: CircularProgressIndicator(
                    color: Appcolors.primarycolor,
                  )):Expanded(child: ListView.separated(padding:EdgeInsets.only(top: height*0.01) ,
                      itemBuilder:(context, index) => VeresStyle(index: index, contant:veres[index], ), separatorBuilder:(context, index) => (SizedBox(height: height*0.02 ,)), itemCount:  veres.length)),
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
    veres=suraContent;
    setState(() {

    });
  }
}
