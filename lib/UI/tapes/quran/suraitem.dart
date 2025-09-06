import 'package:flutter/material.dart';
import 'package:projectt/UI/tapes/quran/quran%20resoures.dart';

import '../../../ultilss/app assets.dart';
import '../../../ultilss/appstyles.dart';

class SuraItem extends StatelessWidget {
   SuraItem({super.key,required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAsstes.IMGEBORDER),
            Text('${index+1}',style: AppStyles.bold16white,)
          ],),
        SizedBox(width: width*0.04,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${QuranResoures.englishQuranSurahs[index]}',style: AppStyles.bold20white),
             Text('${QuranResoures.AyaNumber[index]} Veres',style: AppStyles.bold16white),
          ],

        ),
        const Spacer(),
         Text('${QuranResoures.arabicAuranSuras[index]}',style: AppStyles.bold20white)

      ],


    );
  }
}
