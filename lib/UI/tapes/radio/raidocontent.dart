import 'package:flutter/material.dart';

import '../../../ultilss/app assets.dart';
import '../../../ultilss/appcolors.dart';
import '../../../ultilss/appstyles.dart';

class RaidoContent extends StatelessWidget {
  const RaidoContent({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return  Container(
      width: 390,
      height: 141,

      decoration: BoxDecoration(
          color: Appcolors.primarycolor,
          image: DecorationImage(image: AssetImage(AppAsstes.radiobootom),alignment: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Radio Ibrahim Al-Akdar',style: AppStyles.bold20black,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            spacing: width*0.06,
            children: [
              SizedBox(width: width*0.08,),
              Image.asset(AppAsstes.pause),
              Image.asset(AppAsstes.speaker),
            ],
          ),
        ],
      ),

    )
    ;
  }
}
