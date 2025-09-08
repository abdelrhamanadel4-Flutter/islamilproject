import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../ultilss/app assets.dart';
import '../../../ultilss/appcolors.dart';
import '../../../ultilss/appstyles.dart';
import 'hadithmodel.dart';
import 'hadtihstyle.dart';

class HadithDetails extends StatefulWidget {
  const HadithDetails({super.key});

  @override
  State<HadithDetails> createState() => _HadithDetailsState();
}

class _HadithDetailsState extends State<HadithDetails> {

  String hadtiznumber='';
   String hadtiz='';

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    int index=ModalRoute.of(context)?.settings.arguments as int;
    if(hadtiz.isEmpty)
      loadSuraFile(index);
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith ${index+1}',style: AppStyles.bold20primary,),
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
                  Text(hadtiznumber,style: AppStyles.bold24primary,),
                  SizedBox(height: height*0.04,),

                  hadtiz.isEmpty?Center(child: CircularProgressIndicator(
                    color: Appcolors.primarycolor,
                  )):Expanded(
                      child:SingleChildScrollView(child: HadtihStyle(contant:hadtiz ,)) ),
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
    String fileContent=await rootBundle.loadString('assets/files/Hadeeth/h${index+1}.txt');
    List<String>hadtihContent=fileContent.split('\n');
    String title = hadtihContent.isNotEmpty ? hadtihContent.first.trim() : '';
    hadtiznumber=title;
    String body = hadtihContent.length > 1 ? hadtihContent.sublist(1).join('\n').trim() : '';
    hadtiz=body;
    setState(() {

    });
  }
}
