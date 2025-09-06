import 'package:flutter/material.dart';

import '../../../ultilss/appstyles.dart';

class TinmeContent extends StatelessWidget {
  const TinmeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(  width: 104,height: 128,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color(0xff202020), Color(0xffB19768)]),
      )
      ,child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Aser',style: AppStyles.bold20white,),
          Text('04:38',style: AppStyles.bold32white,),
          Text('PM',style: AppStyles.bold20white,),

        ],
      ),

    );

  }
}
