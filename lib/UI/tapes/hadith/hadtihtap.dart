import 'package:flutter/material.dart';
import 'package:projectt/ultilss/app%20assets.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';

class Hadtih extends StatelessWidget {
  const Hadtih({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.separated(
        itemBuilder:(context, index) =>  Padding(
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
                Text('الحد يث الأول',style: AppStyles.bold24black,),
                SizedBox(height: height*0.04,),
                Text(' عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ).رواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه.',style: AppStyles.bold16black,textDirection: TextDirection.rtl,textAlign: TextAlign.center,)


              ],
            ),

          ),
        ) ,itemCount: 10,separatorBuilder: (context, index) => SizedBox(),scrollDirection: Axis.horizontal,

      ),
    );
  }
}
