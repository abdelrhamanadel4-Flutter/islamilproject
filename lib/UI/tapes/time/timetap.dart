import 'package:flutter/material.dart';
import 'package:projectt/ultilss/appcolors.dart';
import 'package:projectt/ultilss/appstyles.dart';

import '../../../ultilss/app assets.dart';
import 'TineContent.dart';

class TimeTap extends StatelessWidget {
  const TimeTap({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: width*0.04),
      child: Column(
        children: [
          Container(
            width: 390,
            height: 301,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Appcolors.blackgoldcolor,
              image: DecorationImage(image: AssetImage(AppAsstes.containertime),fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('16 Jul,\n 2024',style: AppStyles.bold16white,),
                    Text('Pray Time',style: AppStyles.boldbg20black,),
                    Text('09 Muh,\n 1446',style: AppStyles.bold16white,),
                  ],
                ),
            SizedBox(height:height*0.04 ,),
                Expanded(
                    child: ListView.separated(scrollDirection: Axis.horizontal,padding: EdgeInsets.zero,
                        itemBuilder:(context, index) => TinmeContent(), separatorBuilder: (context, index) => SizedBox(width: width*0.02,), itemCount: 10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: width* 0.02,),
                    Text('Next Pray - 02:32',style: AppStyles.bold20black,),
                    Image.asset(AppAsstes.speakersilinet)
                  ],
                )

              ],
            ),
          ),
          SizedBox(height: height*0.02,),
          Container(alignment: Alignment.centerLeft,
              child: Text('Azkar',style: AppStyles.bold20white,)),
          SizedBox(height: height*0.02,),
          Row(
            spacing: width*0.06,
            children: [
              Expanded(child: Container(
                width:185 ,height:259 ,
                decoration:BoxDecoration(
                  color: Appcolors.blackcolor,
                  border: BoxBorder.all(color: Appcolors.primarycolor,width: 2),
                  borderRadius: BorderRadius.circular(20),
                ) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAsstes.ea1),
                    Text('Evening Azkar',style: AppStyles.bold20white,)
                  ],
                ),
              )),
              Expanded(child: Container(
                width:185 ,height:259 ,
                decoration:BoxDecoration(
                  color: Appcolors.blackcolor,
                  border: BoxBorder.all(color: Appcolors.primarycolor,width: 2),
                  borderRadius: BorderRadius.circular(20),
                ) ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Image.asset(AppAsstes.ea2),
                    Text('Evening Azkar',style: AppStyles.bold20white,)
                  ],
                ),
              )),
            ],
          )

        ],
      ),
    );
  }
}
