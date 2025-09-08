import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../ultilss/app assets.dart';
import '../../../ultilss/appcolors.dart';
import '../../../ultilss/appstyles.dart';

class HadtihItem extends StatefulWidget {
  const HadtihItem({super.key});

  @override
  State<HadtihItem> createState() => _HadtihItemState();
}

class _HadtihItemState extends State<HadtihItem> {
  String hadtiznumber='';
  String hadtiz='';
  @override
  Widget build(BuildContext context) {
    int index=ModalRoute.of(context)?.settings.arguments as int;
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    if(hadtiz.isEmpty)
      loadSuraFile(index);
    return Padding(
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
            Text(hadtiznumber,style: AppStyles.bold24black,),
            SizedBox(height: height*0.04,),
            Text(hadtiz,
              style: AppStyles.bold16black,textDirection: TextDirection.rtl,textAlign: TextAlign.center,)


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
